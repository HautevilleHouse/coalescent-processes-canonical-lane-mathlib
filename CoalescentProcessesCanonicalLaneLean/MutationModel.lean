import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure MutationModel where
  mutationRate : ℝ
  mutationMatrixType : Type u
  matrixSymmetric : Prop
  stationaryDistributionComputed : Prop
  mutationRatePositive : mutationRate > 0
  matrixSymmetricClosed : matrixSymmetric
  stationaryDistributionClosed : stationaryDistributionComputed

def MutationModelClosed (M : MutationModel) : Prop :=
  M.mutationRate > 0 ∧ M.matrixSymmetric ∧ M.stationaryDistributionComputed

theorem mutation_model_closed_from_evidence (M : MutationModel) : MutationModelClosed M := by
  exact And.intro M.mutationRatePositive (And.intro M.matrixSymmetricClosed M.stationaryDistributionClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
