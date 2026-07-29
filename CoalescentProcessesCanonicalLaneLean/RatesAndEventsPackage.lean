import CoalescentProcessesCanonicalLaneLean.TimeScales

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure RatesAndEventsPackage (T : TimeScalePackage) where
  coalescenceRates : T.timeUnit → ℕ → ℝ
  mutationRates : T.timeUnit → ℕ → ℝ
  recombinationRates : T.timeUnit → ℕ → ℝ
  rateLawful : ∀(t : T.timeUnit) (n : ℕ), coalescenceRates t n ≥ 0 ∧ mutationRates t n ≥ 0 ∧ recombinationRates t n ≥ 0
  hirschFiniteness : Prop

structure RatesAndEventsEvidence {T : TimeScalePackage} (R : RatesAndEventsPackage T) where
  coalescenceRatesNonnegative : ∀(t : T.timeUnit) (n : ℕ), R.coalescenceRates t n ≥ 0
  mutationRatesNonnegative : ∀(t : T.timeUnit) (n : ℕ), R.mutationRates t n ≥ 0
  recombinationRatesNonnegative : ∀(t : T.timeUnit) (n : ℕ), R.recombinationRates t n ≥ 0
  hirschFinitenessClosed : R.hirschFiniteness

def RatesAndEventsClosed {T : TimeScalePackage} (R : RatesAndEventsPackage T) : Prop :=
  (∀(t : T.timeUnit) (n : ℕ), R.coalescenceRates t n ≥ 0) ∧
  (∀(t : T.timeUnit) (n : ℕ), R.mutationRates t n ≥ 0) ∧
  (∀(t : T.timeUnit) (n : ℕ), R.recombinationRates t n ≥ 0) ∧
  R.hirschFiniteness

theorem rates_and_events_closed_from_evidence
    {T : TimeScalePackage} (R : RatesAndEventsPackage T) (E : RatesAndEventsEvidence R) :
    RatesAndEventsClosed R := by
  exact And.intro E.coalescenceRatesNonnegative
    (And.intro E.mutationRatesNonnegative
      (And.intro E.recombinationRatesNonnegative E.hirschFinitenessClosed))

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse
