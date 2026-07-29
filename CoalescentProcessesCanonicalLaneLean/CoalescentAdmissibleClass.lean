import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentAdmittedObject where
  leafCount : ℕ
  effectivePopulationSize : ℝ
  mutationRate : ℝ
  conclusion : effectivePopulationSize > 0

structure AdmissibleClass where
  object : CoalescentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CoalescentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CoalescentWitnessClosed (O : CoalescentAdmittedObject) : Prop :=
  O.effectivePopulationSize > 0

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
