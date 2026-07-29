import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure RecombinationExtension where
  recombinationRate : ℝ
  numberOfLoci : ℕ
  breakpointDistribution : Prop
  ratePositive : recombinationRate > 0
  locusCountPositive : numberOfLoci > 0
  breakpointDistributionClosed : breakpointDistribution

def RecombinationExtensionClosed (R : RecombinationExtension) : Prop :=
  R.recombinationRate > 0 ∧ R.numberOfLoci > 0 ∧ R.breakpointDistribution

theorem recombination_extension_closed_from_evidence
    (R : RecombinationExtension) : RecombinationExtensionClosed R := by
  exact And.intro R.ratePositive (And.intro R.locusCountPositive R.breakpointDistributionClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
