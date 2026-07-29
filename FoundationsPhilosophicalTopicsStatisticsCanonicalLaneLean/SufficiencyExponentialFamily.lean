import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure SufficiencyExponentialFamilyPackage where
  family : Type
  parameterSpace : Type
  sufficientStatistic : Type
  density : family -> parameterSpace -> ℝ
  factorization : Prop
  exponentialForm : Prop
  factorizationTerm : factorization
  exponentialFormTerm : exponentialForm

structure SufficiencyExponentialFamilyEvidence (P : SufficiencyExponentialFamilyPackage) where
  factorizationClosed : P.factorization
  exponentialFormClosed : P.exponentialForm

def SufficiencyExponentialFamilyClosed (P : SufficiencyExponentialFamilyPackage) : Prop :=
  P.factorization ∧ P.exponentialForm

theorem sufficiency_exponential_family_closed_from_evidence
    (P : SufficiencyExponentialFamilyPackage)
    (E : SufficiencyExponentialFamilyEvidence P) :
    SufficiencyExponentialFamilyClosed P := by
  exact And.intro E.factorizationClosed E.exponentialFormClosed

structure SufficiencyExponentialFamilyBridgePackage where
  familyClosed : Bool
  bridgeCondition : Prop
  bridgeConditionTerm : bridgeCondition

theorem bridge_from_exponential_family
    (P : SufficiencyExponentialFamilyPackage)
    (B : SufficiencyExponentialFamilyBridgePackage) :
    bridgeClosed A := by
  sorry

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse
