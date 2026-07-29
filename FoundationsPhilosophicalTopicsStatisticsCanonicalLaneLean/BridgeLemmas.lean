import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StatisticsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse