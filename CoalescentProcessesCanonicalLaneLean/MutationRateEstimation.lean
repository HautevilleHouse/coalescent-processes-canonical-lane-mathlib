import CoalescentProcessesCanonicalLaneLean.KingmanCoalescentBridgeLemmas

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure MutationRateEstimationPackage where
  segregatingSites : ℕ
  observedMutations : ℕ
  estimatedTheta : ℝ
  mutationRateUpperBound : ℝ
  mutationRateLowerBound : ℝ

structure MutationRateEstimationEvidence (M : MutationRateEstimationPackage) where
  segregatingSitesCounted : M.segregatingSites > 0
  thetaFromSegregatingSites : M.estimatedTheta = (2 * M.segregatingSites) / harmonicSum M.sampleSize
  mutationRateBoundsDerived : M.mutationRateLowerBound ≤ M.estimatedTheta ∧ M.estimatedTheta ≤ M.mutationRateUpperBound

def MutationRateEstimationClosed (M : MutationRateEstimationPackage) : Prop :=
  M.segregatingSites > 0 ∧
  M.estimatedTheta = (2 * M.segregatingSites) / harmonicSum M.sampleSize ∧
  M.mutationRateLowerBound ≤ M.estimatedTheta ∧ M.estimatedTheta ≤ M.mutationRateUpperBound

theorem mutation_rate_estimation_closed_from_evidence (M : MutationRateEstimationPackage) (E : MutationRateEstimationEvidence M) : MutationRateEstimationClosed M := by
  exact And.intro E.segregatingSitesCounted (And.intro E.thetaFromSegregatingSites E.mutationRateBoundsDerived)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse