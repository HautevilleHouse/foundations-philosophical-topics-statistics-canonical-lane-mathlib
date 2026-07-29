import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoundationsPhilosophicalTopicsStatistics

structure HypothesisTest where
  nullHypothesis : Type
  alternativeHypothesis : Type
  testStatistic : Type
  rejectionRegion : Type
  significanceLevel : ℝ
  power : ℝ

def MostPowerfulTest (H : HypothesisTest) : Prop :=
  H.power ≥ 0.8 ∧ H.significanceLevel ≤ 0.05

structure NeymanPearsonLemmaPackage (H : HypothesisTest) where
  likelihoodRatio : Type
  threshold : ℝ
  optimalTest : Prop
  optimalTestTerm : optimalTest

def NeymanPearsonLemmaClosed (H : HypothesisTest) (N : NeymanPearsonLemmaPackage H) : Prop :=
  N.optimalTest ∧ MostPowerfulTest H

structure NeymanPearsonLemmaEvidence (H : HypothesisTest)
    (N : NeymanPearsonLemmaPackage H) where
  optimalTestClosed : N.optimalTest
  mostPowerfulTestClosed : MostPowerfulTest H

theorem neyman_pearson_lemma_closed_from_evidence
    (H : HypothesisTest) (N : NeymanPearsonLemmaPackage H)
    (E : NeymanPearsonLemmaEvidence H N) :
    NeymanPearsonLemmaClosed H N := by
  exact And.intro E.optimalTestClosed E.mostPowerfulTestClosed

end FoundationsPhilosophicalTopicsStatistics
end HautevilleHouse
