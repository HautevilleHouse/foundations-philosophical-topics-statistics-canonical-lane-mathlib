import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure StatisticsAdmittedObject where
  sampleSpace : Type
  probabilityMeasure : Type
  sufficientStatistic : Prop
  exponentialFamily : Prop

structure AdmissibleClass where
  object : StatisticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  StatisticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse