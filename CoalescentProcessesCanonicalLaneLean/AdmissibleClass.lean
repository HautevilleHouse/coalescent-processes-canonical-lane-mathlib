import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure AdmissibleClass where
  object : CoalescentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CoalescentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
