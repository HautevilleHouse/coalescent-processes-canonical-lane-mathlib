import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure KingmanCoalescentBridge where
  nLineages : Nat
  rateScaling : ℝ
  pairwiseRate : ℝ
  stateSpace : CoalescentStateSpace
  waitingTimeDistribution : Prop
  binaryMergingRule : Prop
  waitingTimeDistributionClosed : waitingTimeDistribution
  binaryMergingRuleClosed : binaryMergingRule
  stateEvidence : CoalescentStateSpaceEvidence stateSpace

def KingmanCoalescentBridgeClosed (K : KingmanCoalescentBridge) : Prop :=
  K.waitingTimeDistribution ∧ K.binaryMergingRule ∧ CoalescentStateSpaceClosed K.stateSpace

theorem kingman_coalescent_bridge_closed_from_evidence
    (K : KingmanCoalescentBridge) : KingmanCoalescentBridgeClosed K := by
  exact And.intro K.waitingTimeDistributionClosed
    (And.intro K.binaryMergingRuleClosed
      (coalescent_state_space_closed_from_evidence K.stateSpace K.stateEvidence))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
