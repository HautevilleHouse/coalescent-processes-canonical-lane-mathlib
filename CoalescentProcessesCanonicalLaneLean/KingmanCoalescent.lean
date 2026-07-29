import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesCanonicalLaneLean.CoalescentAdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure KingmanCoalescentPackage where
  leafCount : ℕ
  coalescenceRate : ℝ
  timeScale : ℝ
  effectivePopulationSize : ℝ
  rateDerived : Prop
  timeScaleDerived : Prop
  conclusion : rateDerived ∧ timeScaleDerived ∧ effectivePopulationSize > 0

structure KingmanCoalescentEvidence (P : KingmanCoalescentPackage) where
  rateDerivedClosed : P.rateDerived
  timeScaleDerivedClosed : P.timeScaleDerived
  effectivePopulationSizePositive : P.effectivePopulationSize > 0

def KingmanCoalescentClosed (P : KingmanCoalescentPackage) : Prop :=
  P.rateDerived ∧ P.timeScaleDerived ∧ P.effectivePopulationSize > 0

theorem kingman_coalescent_closed_from_evidence (P : KingmanCoalescentPackage)
    (E : KingmanCoalescentEvidence P) : KingmanCoalescentClosed P := by
  exact And.intro E.rateDerivedClosed (And.intro E.timeScaleDerivedClosed E.effectivePopulationSizePositive)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
