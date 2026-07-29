import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentStateSpace where
  alleleTypes : Type u
  initialTypeCount : Nat
  state : List (Nat × (alleleTypes → Prop))
  stateSpaceIsPolish : Prop
  stateSpaceIsPolishTerm : stateSpaceIsPolish

structure CoalescentStateSpaceEvidence (C : CoalescentStateSpace) where
  initialTypeCountPositive : C.initialTypeCount > 0
  stateNonempty : C.state ≠ []
  stateSpaceIsPolishClosed : C.stateSpaceIsPolish

def CoalescentStateSpaceClosed (C : CoalescentStateSpace) : Prop :=
  C.initialTypeCount > 0 ∧ C.state ≠ [] ∧ C.stateSpaceIsPolish

theorem coalescent_state_space_closed_from_evidence
    (C : CoalescentStateSpace) (E : CoalescentStateSpaceEvidence C) :
    CoalescentStateSpaceClosed C := by
  exact And.intro E.initialTypeCountPositive (And.intro E.stateNonempty E.stateSpaceIsPolishClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
