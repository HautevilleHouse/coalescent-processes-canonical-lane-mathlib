import CoalescentProcessesCanonicalLaneLean.PopulationGeneticsAdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

def bridgeClosed (A : CoalescentAdmissibleClass) : Prop :=
  CoalescentWitnessClosed A.object

theorem bridge_from_admissible_class (A : CoalescentAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse