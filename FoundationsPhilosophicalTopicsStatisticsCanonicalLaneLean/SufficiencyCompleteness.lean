import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean

structure SufficiencyPackage where
  statistic : Type
  factorizationCriterion : Prop
  minimalSufficiency : Prop
  completeness : Prop
  lehmannScheffeTheorem : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficiencyClosed : S.minimalSufficiency
  completenessClosed : S.completeness
  lehmannScheffeClosed : S.lehmannScheffeTheorem

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationCriterion \land S.minimalSufficiency \land S.completeness \land S.lehmannScheffeTheorem

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationCriterionClosed
    (And.intro E.minimalSufficiencyClosed
      (And.intro E.completenessClosed E.lehmannScheffeClosed))

end FoundationsPhilosophicalTopicsStatisticsCanonicalLaneLean
end HautevilleHouse
