import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure BayesianInferencePackage where
  sampleSpace : Type u
  parameterSpace : Set ℝ
  priorDistribution : Set ℝ → ℝ
  likelihoodFunction : sampleSpace → ℝ → ℝ
  posteriorDistribution : sampleSpace → (Set ℝ → ℝ)
  posteriorWellDefined : Prop
  priorProper : Prop
  likelihoodDominated : Prop
  posteriorConsistent : Prop

structure BayesianInferenceEvidence (B : BayesianInferencePackage) where
  posteriorWellDefinedClosed : B.posteriorWellDefined
  priorProperClosed : B.priorProper
  likelihoodDominatedClosed : B.likelihoodDominated
  posteriorConsistentClosed : B.posteriorConsistent

def BayesianInferenceClosed (B : BayesianInferencePackage) : Prop :=
  B.posteriorWellDefined ∧ B.priorProper ∧ B.likelihoodDominated ∧ B.posteriorConsistent

theorem bayesian_inference_closed_from_evidence (B : BayesianInferencePackage) (Ev : BayesianInferenceEvidence B) : BayesianInferenceClosed B := by
  exact And.intro Ev.posteriorWellDefinedClosed
    (And.intro Ev.priorProperClosed
      (And.intro Ev.likelihoodDominatedClosed Ev.posteriorConsistentClosed))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse