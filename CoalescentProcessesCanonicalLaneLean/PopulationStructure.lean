import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure PopulationStructurePackage {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T} where
  populationSubdivision : Prop
  migrationRates : NNReal → NNReal
  effectiveSizeFluctuation : Prop

structure PopulationStructureEvidence {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T}
    (P : PopulationStructurePackage K T M) where
  populationSubdivisionClosed : P.populationSubdivision
  effectiveSizeFluctuationClosed : P.effectiveSizeFluctuation

def PopulationStructureClosed {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} {M : MutationStructurePackage K T}
    (P : PopulationStructurePackage K T M) : Prop :=
  P.populationSubdivision ∧ P.effectiveSizeFluctuation

theorem population_structure_closed_from_evidence
    {K : KingmanCoalescentPackage} {T : CoalescentTimesPackage K}
    {M : MutationStructurePackage K T} (P : PopulationStructurePackage K T M)
    (E : PopulationStructureEvidence P) : PopulationStructureClosed P := by
  exact And.intro E.populationSubdivisionClosed E.effectiveSizeFluctuationClosed

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse