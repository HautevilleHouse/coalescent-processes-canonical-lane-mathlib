import CoalescentProcessesCanonicalLaneLean.KingmanCoalescentBridgeLemmas

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

def gateClosed (A : CoalescentAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CoalescentAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse