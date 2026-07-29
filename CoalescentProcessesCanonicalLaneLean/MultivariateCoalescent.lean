import SampleConsistency

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure MultivariateCoalescentPackage {K : KingmanCoalescentPackage}
    (S : SampleConsistencyPackage K) where
  multipleLoci : Prop
  recombination : Prop
  linkageDisequilibrium : Prop

structure MultivariateCoalescentEvidence {K : KingmanCoalescentPackage}
    {S : SampleConsistencyPackage K} (M : MultivariateCoalescentPackage S) where
  multipleLociClosed : M.multipleLoci
  recombinationClosed : M.recombination
  linkageDisequilibriumClosed : M.linkageDisequilibrium

def MultivariateCoalescentClosed {K : KingmanCoalescentPackage}
    {S : SampleConsistencyPackage K} (M : MultivariateCoalescentPackage S) : Prop :=
  M.multipleLoci ∧ M.recombination ∧ M.linkageDisequilibrium

theorem multivariate_coalescent_closed_from_evidence {K : KingmanCoalescentPackage}
    {S : SampleConsistencyPackage K} (M : MultivariateCoalescentPackage S)
    (E : MultivariateCoalescentEvidence M) : MultivariateCoalescentClosed M := by
  exact And.intro E.multipleLociClosed
    (And.intro E.recombinationClosed E.linkageDisequilibriumClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse