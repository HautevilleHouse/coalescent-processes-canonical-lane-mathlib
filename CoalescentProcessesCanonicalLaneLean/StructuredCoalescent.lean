import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesCanonicalLaneLean.KingmanCoalescent

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure StructuredCoalescentPackage {K : KingmanCoalescentPackage} where
  migrationMatrix : Type
  mutationMatrix : Type
  subdivisionRates : Type
  migrationMatrixDefined : Prop
  mutationMatrixDefined : Prop
  subdivisionRatesDefined : Prop
  structuredProcessDerived : Prop
  migrationMatrixDefinedTerm : migrationMatrixDefined
  mutationMatrixDefinedTerm : mutationMatrixDefined
  subdivisionRatesDefinedTerm : subdivisionRatesDefined
  structuredProcessDerivedFromSub : migrationMatrixDefined → mutationMatrixDefined → subdivisionRatesDefined → structuredProcessDerived

structure StructuredCoalescentEvidence {K : KingmanCoalescentPackage}
    (S : StructuredCoalescentPackage K) where
  migrationMatrixDefinedClosed : S.migrationMatrixDefined
  mutationMatrixDefinedClosed : S.mutationMatrixDefined
  subdivisionRatesDefinedClosed : S.subdivisionRatesDefined
  structuredProcessDerivedClosed : S.structuredProcessDerived

def StructuredCoalescentClosed {K : KingmanCoalescentPackage}
    (S : StructuredCoalescentPackage K) : Prop :=
  S.migrationMatrixDefined ∧ S.mutationMatrixDefined ∧ S.subdivisionRatesDefined ∧ S.structuredProcessDerived

theorem structured_coalescent_closed_from_evidence
    {K : KingmanCoalescentPackage} (S : StructuredCoalescentPackage K)
    (E : StructuredCoalescentEvidence S) : StructuredCoalescentClosed S := by
  exact And.intro E.migrationMatrixDefinedClosed
    (And.intro E.mutationMatrixDefinedClosed
      (And.intro E.subdivisionRatesDefinedClosed E.structuredProcessDerivedClosed))

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
