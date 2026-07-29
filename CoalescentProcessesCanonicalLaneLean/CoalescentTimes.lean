import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentTimesPackage (K : KingmanCoalescentPackage) where
  totalBranchLength : ℝ≥0∞
  heightDistribution : Type u
  timeHomogeneous : Prop

structure CoalescentTimesEvidence {K : KingmanCoalescentPackage}
    (T : CoalescentTimesPackage K) where
  timeHomogeneousClosed : T.timeHomogeneous

def CoalescentTimesClosed {K : KingmanCoalescentPackage}
    (T : CoalescentTimesPackage K) : Prop := T.timeHomogeneous

theorem coalescent_times_closed_from_evidence {K : KingmanCoalescentPackage}
    (T : CoalescentTimesPackage K) (E : CoalescentTimesEvidence T) :
    CoalescentTimesClosed T := E.timeHomogeneousClosed

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse