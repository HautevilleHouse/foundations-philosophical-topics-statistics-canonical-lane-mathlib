import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure UMVUEPackage where
  unbiasedEstimator : Prop
  uniformlyMinimumVariance : Prop
  sufficientStatistic : Prop
  completeness : Prop
  raoBlackwellTheorem : Prop
  lehmannScheffeTheorem : Prop

structure UMVUEEvidence (U : UMVUEPackage) where
  unbiasedEstimatorClosed : U.unbiasedEstimator
  uniformlyMinimumVarianceClosed : U.uniformlyMinimumVariance
  sufficientStatisticClosed : U.sufficientStatistic
  completenessClosed : U.completeness
  raoBlackwellTheoremClosed : U.raoBlackwellTheorem
  lehmannScheffeTheoremClosed : U.lehmannScheffeTheorem

def UMVUEClosed (U : UMVUEPackage) : Prop :=
  U.unbiasedEstimator ∧ U.uniformlyMinimumVariance ∧ U.sufficientStatistic ∧ U.completeness ∧ U.raoBlackwellTheorem ∧ U.lehmannScheffeTheorem

theorem umvue_closed_from_evidence (U : UMVUEPackage) (E : UMVUEEvidence U) : UMVUEClosed U := by
  exact And.intro E.unbiasedEstimatorClosed (And.intro E.uniformlyMinimumVarianceClosed (And.intro E.sufficientStatisticClosed (And.intro E.completenessClosed (And.intro E.raoBlackwellTheoremClosed E.lehmannScheffeTheoremClosed))))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse
