import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure SufficiencyPrinciplePackage where
  sampleSpace : Type u
  parameterSpace : Type v
  statistic : sampleSpace → α
  conditionalDistribution : (α : Type w) → [DecidableEq α] → sampleSpace → (parameterSpace → Prop) → Prop
  factorizationHolds : Prop
  sufficientStatisticDefined : Prop
  neymanFactorization : Prop

structure SufficiencyPrincipleEvidence (S : SufficiencyPrinciplePackage) where
  factorizationHoldsClosed : S.factorizationHolds
  sufficientStatisticDefinedClosed : S.sufficientStatisticDefined
  neymanFactorizationClosed : S.neymanFactorization

def SufficiencyPrincipleClosed (S : SufficiencyPrinciplePackage) : Prop :=
  S.factorizationHolds ∧ S.sufficientStatisticDefined ∧ S.neymanFactorization

theorem sufficiency_principle_closed_from_evidence
    (S : SufficiencyPrinciplePackage) (E : SufficiencyPrincipleEvidence S) :
    SufficiencyPrincipleClosed S := by
  exact And.intro E.factorizationHoldsClosed
    (And.intro E.sufficientStatisticDefinedClosed E.neymanFactorizationClosed)

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse