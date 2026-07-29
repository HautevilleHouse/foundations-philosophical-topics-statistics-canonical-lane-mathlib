import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure HypothesisTestingPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Prop
  rejectionRegion : Prop
  typeIError : Prop
  typeIIError : Prop
  pValue : Prop

structure HypothesisTestingEvidence (H : HypothesisTestingPackage) where
  nullHypothesisClosed : H.nullHypothesis
  alternativeHypothesisClosed : H.alternativeHypothesis
  testStatisticClosed : H.testStatistic
  rejectionRegionClosed : H.rejectionRegion
  typeIErrorClosed : H.typeIError
  typeIIErrorClosed : H.typeIIError
  pValueClosed : H.pValue

def HypothesisTestingClosed (H : HypothesisTestingPackage) : Prop :=
  H.nullHypothesis ∧ H.alternativeHypothesis ∧ H.testStatistic ∧ H.rejectionRegion ∧ H.typeIError ∧ H.typeIIError ∧ H.pValue

theorem hypothesis_testing_closed_from_evidence (H : HypothesisTestingPackage) (E : HypothesisTestingEvidence H) : HypothesisTestingClosed H := by
  exact And.intro E.nullHypothesisClosed (And.intro E.alternativeHypothesisClosed (And.intro E.testStatisticClosed (And.intro E.rejectionRegionClosed (And.intro E.typeIErrorClosed (And.intro E.typeIIErrorClosed E.pValueClosed)))))

structure DecisionTheoryPackage where
  lossFunction : Prop
  riskFunction : Prop
  admissibleDecision : Prop
  minimaxDecision : Prop
  bayesDecision : Prop

structure DecisionTheoryEvidence (D : DecisionTheoryPackage) where
  lossFunctionClosed : D.lossFunction
  riskFunctionClosed : D.riskFunction
  admissibleDecisionClosed : D.admissibleDecision
  minimaxDecisionClosed : D.minimaxDecision
  bayesDecisionClosed : D.bayesDecision

def DecisionTheoryClosed (D : DecisionTheoryPackage) : Prop :=
  D.lossFunction ∧ D.riskFunction ∧ D.admissibleDecision ∧ D.minimaxDecision ∧ D.bayesDecision

theorem decision_theory_closed_from_evidence (D : DecisionTheoryPackage) (E : DecisionTheoryEvidence D) : DecisionTheoryClosed D := by
  exact And.intro E.lossFunctionClosed (And.intro E.riskFunctionClosed (And.intro E.admissibleDecisionClosed (And.intro E.minimaxDecisionClosed E.bayesDecisionClosed)))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse
