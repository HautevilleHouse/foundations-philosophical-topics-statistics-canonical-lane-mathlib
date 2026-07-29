import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure MLEConsistencyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  likelihoodFunction : sampleSpace → (parameterSpace → ℝ)
  maximumLikelihoodEstimator : sampleSpace → parameterSpace
  identifiability : Prop
  compactness : Prop
  continuity : Prop
  consistencyUnderConditions : Prop

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  identifiabilityClosed : M.identifiability
  compactnessClosed : M.compactness
  continuityClosed : M.continuity
  consistencyUnderConditionsClosed : M.consistencyUnderConditions

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.identifiability ∧ M.compactness ∧ M.continuity ∧ M.consistencyUnderConditions

theorem mle_consistency_closed_from_evidence
    (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) :
    MLEConsistencyClosed M := by
  exact And.intro E.identifiabilityClosed
    (And.intro E.compactnessClosed
      (And.intro E.continuityClosed E.consistencyUnderConditionsClosed))

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse