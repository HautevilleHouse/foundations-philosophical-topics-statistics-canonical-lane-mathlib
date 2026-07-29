import canonicalLaneMathlib.AdmissibleClass
import FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean.SufficiencyExponentialFamily
import FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean.NeymanPearsonLemma
import FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean.MLEAsymptotics

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

def ConstrainedFoundationsStatisticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foundations_statistics_endgame (A : AdmissibleClass) :
    ConstrainedFoundationsStatisticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse
