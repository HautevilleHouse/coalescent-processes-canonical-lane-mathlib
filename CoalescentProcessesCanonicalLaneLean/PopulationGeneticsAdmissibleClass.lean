import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentAdmittedObject where
  object : AdmittedObject
  sampleSize : ℕ
  effectivePopulationSize : ℝ
  mutationRate : ℝ
  coalescentEventTimes : List ℝ

structure CoalescentAdmissibleClass where
  object : CoalescentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CoalescentAdmissibleClass) : Prop :=
  CoalescentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse