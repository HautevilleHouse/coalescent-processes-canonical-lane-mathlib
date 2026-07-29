import CoalescentProcessesCanonicalLaneLean.KingmanCoalescentBridgeLemmas

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentMomentsPackage where
  meanTMRCA : ℝ
  varianceTMRCA : ℝ
  meanTotalBranchLength : ℝ
  varianceTotalBranchLength : ℝ
  coalescentTimesDistribution : Prop

structure CoalescentMomentsEvidence (C : CoalescentMomentsPackage) where
  meanTMRCADerived : C.meanTMRCA = 2 * C.effectivePopulationSize
  varianceTMRCADerived : C.varianceTMRCA = (4 * C.effectivePopulationSize^2) / 3
  meanTotalBranchLengthDerived : C.meanTotalBranchLength = 2 * C.effectivePopulationSize * (harmonicSum C.sampleSize)
  varianceTotalBranchLengthDerived : C.varianceTotalBranchLength = 4 * C.effectivePopulationSize^2 * (varianceTotalSum C.sampleSize)
  coalescentTimesDistributionDerived : C.coalescentTimesDistribution

def CoalescentMomentsClosed (C : CoalescentMomentsPackage) : Prop :=
  C.meanTMRCA = 2 * C.effectivePopulationSize ∧
  C.varianceTMRCA = (4 * C.effectivePopulationSize^2) / 3 ∧
  C.meanTotalBranchLength = 2 * C.effectivePopulationSize * (harmonicSum C.sampleSize) ∧
  C.varianceTotalBranchLength = 4 * C.effectivePopulationSize^2 * (varianceTotalSum C.sampleSize) ∧
  C.coalescentTimesDistribution

theorem coalescent_moments_closed_from_evidence (C : CoalescentMomentsPackage) (E : CoalescentMomentsEvidence C) : CoalescentMomentsClosed C := by
  exact And.intro E.meanTMRCADerived (And.intro E.varianceTMRCADerived (And.intro E.meanTotalBranchLengthDerived (And.intro E.varianceTotalBranchLengthDerived E.coalescentTimesDistributionDerived)))

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse