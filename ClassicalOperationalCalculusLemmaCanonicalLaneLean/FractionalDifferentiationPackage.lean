import ClassicalOperationalCalculusLemmaCanonicalLaneLean.MikusińskiOperatorPackage

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure FractionalDifferentiationPackage where
  baseFunctionSpace : Type
  fractionalOrder : ℝ → ℝ
  differentiationOperator : ℝ → (baseFunctionSpace → baseFunctionSpace)
  integrationOperator : ℝ → (baseFunctionSpace → baseFunctionSpace)
  semigroupProperty : Prop
  compositionLaw : Prop
  fundamentalTheorem : Prop

structure FractionalDifferentiationEvidence (F : FractionalDifferentiationPackage) where
  semigroupPropertyClosed : F.semigroupProperty
  compositionLawClosed : F.compositionLaw
  fundamentalTheoremClosed : F.fundamentalTheorem

def FractionalDifferentiationClosed (F : FractionalDifferentiationPackage) : Prop :=
  F.semigroupProperty ∧ F.compositionLaw ∧ F.fundamentalTheorem

theorem fractional_differentiation_closed_from_evidence
    (F : FractionalDifferentiationPackage) (E : FractionalDifferentiationEvidence F) :
    FractionalDifferentiationClosed F := by
  exact And.intro E.semigroupPropertyClosed
    (And.intro E.compositionLawClosed E.fundamentalTheoremClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
