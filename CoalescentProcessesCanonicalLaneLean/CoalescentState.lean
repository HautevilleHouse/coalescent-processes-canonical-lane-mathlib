import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoalescentAdmittedObject where
  space : CoalescentSpace
  exchangeablePartition : Prop
  consistentSampling : Prop
  kingmanCoalescent : Prop
  conclusion : kingmanCoalescent

structure CoalescentEndgameState where
  object : CoalescentAdmittedObject

def CoalescentWitnessClosed (O : CoalescentAdmittedObject) : Prop :=
  O.kingmanCoalescent

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse