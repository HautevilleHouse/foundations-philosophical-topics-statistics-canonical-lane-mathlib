import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure NeymanPearsonPackage where
  sampleSpace : Type u
  hypotheses : Set (sampleSpace → ℝ) × Set (sampleSpace → ℝ)
  testFunction : sampleSpace → (ℝ → ℝ)
  size : ℝ
  power : ℝ
  mostPowerfulTestExists : Prop
  sizePowerTradeoff : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  mostPowerfulTestExistsClosed : N.mostPowerfulTestExists
  sizePowerTradeoffClosed : N.sizePowerTradeoff

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.mostPowerfulTestExists ∧ N.sizePowerTradeoff

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (Ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro Ev.mostPowerfulTestExistsClosed Ev.sizePowerTradeoffClosed

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse