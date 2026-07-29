import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure MLEAsymptoticPackage where
  model : Type
  parameterSpace : Type
  logLikelihood : model -> parameterSpace -> ℝ
  scoreFunction : Type
  fisherInformation : Type
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop
  consistencyTerm : consistency
  asymptoticNormalityTerm : asymptoticNormality
  efficiencyTerm : efficiency

structure MLEAsymptoticEvidence (P : MLEAsymptoticPackage) where
  consistencyClosed : P.consistency
  asymptoticNormalityClosed : P.asymptoticNormality
  efficiencyClosed : P.efficiency

def MLEAsymptoticClosed (P : MLEAsymptoticPackage) : Prop :=
  P.consistency ∧ P.asymptoticNormality ∧ P.efficiency

theorem mle_asymptotic_closed_from_evidence
    (P : MLEAsymptoticPackage) (E : MLEAsymptoticEvidence P) :
    MLEAsymptoticClosed P := by
  exact And.intro E.consistencyClosed
    (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse
