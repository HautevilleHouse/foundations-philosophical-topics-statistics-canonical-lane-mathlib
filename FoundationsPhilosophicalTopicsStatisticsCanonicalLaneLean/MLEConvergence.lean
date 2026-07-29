import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure MLEPackage where
  likelihoodFunction : Type
  estimator : Type
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop
  regularityConditions : Prop
  informationMatrix : Prop
  cramerRaoBound : Prop

structure MLEEvidence (M : MLEPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency
  regularityClosed : M.regularityConditions
  informationClosed : M.informationMatrix
  cramerRaoClosed : M.cramerRaoBound

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistency \land M.asymptoticNormality \land M.efficiency \land M.regularityConditions \land M.informationMatrix \land M.cramerRaoBound

theorem mle_closed_from_evidence (M : MLEPackage) (E : MLEEvidence M) :
    MLEClosed M := by
  exact And.intro E.consistencyClosed
    (And.intro E.asymptoticNormalityClosed
      (And.intro E.efficiencyClosed
        (And.intro E.regularityClosed
          (And.intro E.informationClosed E.cramerRaoClosed))))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse
