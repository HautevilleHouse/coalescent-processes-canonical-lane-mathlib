import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure PopulationSizeModel where
  effectiveSize : ℕ
  sizeFunction : ℕ → ℕ
  constantEffectiveSize : Prop
  piecewiseConstant : Prop
  sizeFunctionDeterministic : Prop
  constantEffectiveSizeClosed : constantEffectiveSize
  piecewiseConstantClosed : piecewiseConstant
  sizeFunctionDeterministicClosed : sizeFunctionDeterministic

def PopulationSizeModelClosed (P : PopulationSizeModel) : Prop :=
  P.constantEffectiveSize ∧ P.piecewiseConstant ∧ P.sizeFunctionDeterministic

theorem population_size_model_closed_from_evidence
    (P : PopulationSizeModel) : PopulationSizeModelClosed P := by
  exact And.intro P.constantEffectiveSizeClosed
    (And.intro P.piecewiseConstantClosed P.sizeFunctionDeterministicClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
