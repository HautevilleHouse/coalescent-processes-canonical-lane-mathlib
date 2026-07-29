import KingmanCoalescent

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure SampleConsistencyPackage (K : KingmanCoalescentPackage) where
  sampleFromInfinitePop : Prop
  subSampleConsistency : Prop
  mergerTimeDistribution : Prop

structure SampleConsistencyEvidence {K : KingmanCoalescentPackage}
    (S : SampleConsistencyPackage K) where
  sampleFromInfinitePopClosed : S.sampleFromInfinitePop
  subSampleConsistencyClosed : S.subSampleConsistency
  mergerTimeDistributionClosed : S.mergerTimeDistribution

def SampleConsistencyClosed {K : KingmanCoalescentPackage}
    (S : SampleConsistencyPackage K) : Prop :=
  S.sampleFromInfinitePop ∧ S.subSampleConsistency ∧ S.mergerTimeDistribution

theorem sample_consistency_closed_from_evidence {K : KingmanCoalescentPackage}
    (S : SampleConsistencyPackage K) (E : SampleConsistencyEvidence S) :
    SampleConsistencyClosed S := by
  exact And.intro E.sampleFromInfinitePopClosed
    (And.intro E.subSampleConsistencyClosed E.mergerTimeDistributionClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse