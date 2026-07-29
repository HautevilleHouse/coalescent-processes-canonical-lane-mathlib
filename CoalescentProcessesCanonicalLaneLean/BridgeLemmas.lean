import CoalescentProcessesCanonicalLaneLean.CoalescentAdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoalescentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
