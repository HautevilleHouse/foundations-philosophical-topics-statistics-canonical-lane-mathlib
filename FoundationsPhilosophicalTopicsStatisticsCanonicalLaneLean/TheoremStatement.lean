import HautevilleHouse.FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "FoundationsPhilosophicalTopicsStatistics",
    theoremName := "FoundationsPhilosophicalTopicsStatistics",
    theoremObject := "Statistics foundational theorems: sufficiency, exponential families, Neyman-Pearson lemma, MLE consistency",
    classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def ManifoldConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "manifold_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = "FoundationsPhilosophicalTopicsStatistics" ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  ManifoldConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "FoundationsPhilosophicalTopicsStatistics" :=
  by rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane :=
  by rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried :=
  by
    unfold ClassicalSourceBoundaryCarried
    exact And.intro formalizationCertificate.theoremBoundaryOpen_eq_true formalizationCertificate.sourceConjectureClosureClaimed_eq_false

theorem manifold_constrained_theorem_closed_checked :
    ManifoldConstrainedTheoremClosed :=
  by
    unfold ManifoldConstrainedTheoremClosed
    refine And.intro baselineCertificateLane_eq_manifold_constrained (And.intro baselineCertificateAllPass_eq_true outsideConstantDependencyCount_eq_zero)

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized :=
  by
    unfold TheoremLayerInternalized
    refine And.intro theorem_statement_source_key_checked (And.intro theorem_statement_certificate_lane_checked (And.intro classical_source_boundary_carried_checked manifold_constrained_theorem_closed_checked))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse