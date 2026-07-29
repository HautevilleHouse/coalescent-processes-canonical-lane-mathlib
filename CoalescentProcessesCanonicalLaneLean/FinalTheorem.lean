import CoalescentProcessesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

def ConstrainedCoalescentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalescent_endgame (A : AdmissibleClass) :
    ConstrainedCoalescentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
