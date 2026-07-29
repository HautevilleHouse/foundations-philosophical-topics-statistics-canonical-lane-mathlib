import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  sufficientStatistic : sampleSpace → ℝ^n
  naturalParameter : parameterSpace → ℝ^n
  baseMeasure : Type w
  logPartition : parameterSpace → ℝ
  canonicalForm : Prop
  sufficientStatisticExists : Prop
  logPartitionFinite : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  sufficientStatisticExistsClosed : E.sufficientStatisticExists
  logPartitionFiniteClosed : E.logPartitionFinite

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.sufficientStatisticExists ∧ E.logPartitionFinite

theorem exponential_family_closed_from_evidence
    (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) :
    ExponentialFamilyClosed E := by
  exact And.intro Ev.canonicalFormClosed
    (And.intro Ev.sufficientStatisticExistsClosed Ev.logPartitionFiniteClosed)

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse