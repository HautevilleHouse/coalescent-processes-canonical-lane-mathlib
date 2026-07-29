import CoalescentProcessesCanonicalLaneLean.RatesAndEvents

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure KingmanCoalescentPackage (R : RatesAndEventsPackage) where
  populationSize : Nat
  effectivePopulationSize : Nat
  coalescenceRate : ℕ → ℕ  -- rate per pair
  binaryMergerOnly : Prop
  exchangeability : Prop
  consistencyUnderRescaling : Prop

structure KingmanCoalescentEvidence {R : RatesAndEventsPackage} (K : KingmanCoalescentPackage R) where
  binaryMergerOnlyClosed : K.binaryMergerOnly
  exchangeabilityClosed : K.exchangeability
  consistencyUnderRescalingClosed : K.consistencyUnderRescaling

def KingmanCoalescentClosed {R : RatesAndEventsPackage} (K : KingmanCoalescentPackage R) : Prop :=
  K.binaryMergerOnly ∧ K.exchangeability ∧ K.consistencyUnderRescaling

theorem kingman_coalescent_closed_from_evidence
    {R : RatesAndEventsPackage} (K : KingmanCoalescentPackage R)
    (E : KingmanCoalescentEvidence K) : KingmanCoalescentClosed K := by
  exact And.intro E.binaryMergerOnlyClosed
    (And.intro E.exchangeabilityClosed E.consistencyUnderRescalingClosed)

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
