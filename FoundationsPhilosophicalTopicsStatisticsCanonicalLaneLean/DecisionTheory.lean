import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure DecisionTheoryPackage where
  sampleSpace : Type u
  actionSpace : Set ℝ
  lossFunction : (ℝ → ℝ) → ℝ → ℝ
  decisionRule : (sampleSpace → ℝ) → ℝ
  riskFunction : (sampleSpace → ℝ) → ℝ → ℝ
  bayesDecisionRuleExists : Prop
  minimaxDecisionRuleExists : Prop
  admissibilityCondition : Prop
  bayesRiskFinite : Prop

structure DecisionTheoryEvidence (D : DecisionTheoryPackage) where
  bayesDecisionRuleExistsClosed : D.bayesDecisionRuleExists
  minimaxDecisionRuleExistsClosed : D.minimaxDecisionRuleExists
  admissibilityConditionClosed : D.admissibilityCondition
  bayesRiskFiniteClosed : D.bayesRiskFinite

def DecisionTheoryClosed (D : DecisionTheoryPackage) : Prop :=
  D.bayesDecisionRuleExists ∧ D.minimaxDecisionRuleExists ∧ D.admissibilityCondition ∧ D.bayesRiskFinite

theorem decision_theory_closed_from_evidence (D : DecisionTheoryPackage) (Ev : DecisionTheoryEvidence D) : DecisionTheoryClosed D := by
  exact And.intro Ev.bayesDecisionRuleExistsClosed
    (And.intro Ev.minimaxDecisionRuleExistsClosed
      (And.intro Ev.admissibilityConditionClosed Ev.bayesRiskFiniteClosed))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse