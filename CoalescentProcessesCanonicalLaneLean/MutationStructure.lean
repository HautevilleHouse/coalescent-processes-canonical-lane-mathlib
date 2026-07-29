import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure MutationStructurePackage (K : KingmanCoalescentPackage)
    (T : CoalescentTimesPackage K) where
  mutationRate : NNReal
  finiteSitesModel : Prop
  infiniteSitesModel : Prop
  selectiveNeutrality : Prop

structure MutationStructureEvidence {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} (M : MutationStructurePackage K T) where
  finiteSitesModelClosed : M.finiteSitesModel
  infiniteSitesModelClosed : M.infiniteSitesModel
  selectiveNeutralityClosed : M.selectiveNeutrality

def MutationStructureClosed {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} (M : MutationStructurePackage K T) : Prop :=
  M.finiteSitesModel ∧ M.infiniteSitesModel ∧ M.selectiveNeutrality

theorem mutation_structure_closed_from_evidence {K : KingmanCoalescentPackage}
    {T : CoalescentTimesPackage K} (M : MutationStructurePackage K T)
    (E : MutationStructureEvidence M) : MutationStructureClosed M := by
  exact And.intro E.finiteSitesModelClosed
    (And.intro E.infiniteSitesModelClosed E.selectiveNeutralityClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse