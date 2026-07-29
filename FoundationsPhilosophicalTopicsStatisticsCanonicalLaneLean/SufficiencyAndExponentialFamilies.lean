import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure SufficiencyPackage where
  sufficientStatistic : Prop
  factorizationCriterion : Prop
  minimalSufficiency : Prop
  completeness : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientStatisticClosed : S.sufficientStatistic
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficiencyClosed : S.minimalSufficiency
  completenessClosed : S.completeness

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatistic ∧ S.factorizationCriterion ∧ S.minimalSufficiency ∧ S.completeness

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro E.sufficientStatisticClosed (And.intro E.factorizationCriterionClosed (And.intro E.minimalSufficiencyClosed E.completenessClosed))

structure ExponentialFamilyPackage where
  canonicalForm : Prop
  naturalParameterSpace : Prop
  sufficientStatistic : Prop
  logPartitionFunction : Prop
  steepness : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  naturalParameterSpaceClosed : E.naturalParameterSpace
  sufficientStatisticClosed : E.sufficientStatistic
  logPartitionFunctionClosed : E.logPartitionFunction
  steepnessClosed : E.steepness

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.naturalParameterSpace ∧ E.sufficientStatistic ∧ E.logPartitionFunction ∧ E.steepness

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.canonicalFormClosed (And.intro Ev.naturalParameterSpaceClosed (And.intro Ev.sufficientStatisticClosed (And.intro Ev.logPartitionFunctionClosed Ev.steepnessClosed)))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse
