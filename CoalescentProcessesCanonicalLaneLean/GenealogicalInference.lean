import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure GenealogicalInferencePackage {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T} where
  likelihoodFunction : Type u
  posteriorDistribution : Prop
  mcmcConvergence : Prop

structure GenealogicalInferenceEvidence {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T}
    (G : GenealogicalInferencePackage K T M) where
  posteriorDistributionClosed : G.posteriorDistribution
  mcmcConvergenceClosed : G.mcmcConvergence

def GenealogicalInferenceClosed {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T}
    (G : GenealogicalInferencePackage K T M) : Prop :=
  G.posteriorDistribution ∧ G.mcmcConvergence

theorem genealogical_inference_closed_from_evidence
    {K : KingmanCoalescentPackage} {T : CoalescentTimesPackage K}
    {M : MutationStructurePackage K T} (G : GenealogicalInferencePackage K T M)
    (E : GenealogicalInferenceEvidence G) : GenealogicalInferenceClosed G := by
  exact And.intro E.posteriorDistributionClosed E.mcmcConvergenceClosed

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse