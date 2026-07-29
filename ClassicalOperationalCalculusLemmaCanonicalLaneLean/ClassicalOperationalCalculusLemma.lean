import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure OperationalCalculusContext where
  operatorFamily : Type u
  spectralMeasure : Type v
  functionalCalculus : Type w
  operatorFamilySpectral : Prop
  spectralMeasureDefined : Prop
  functionalCalculusDefined : Prop

structure OperationalCalculusContextEvidence (C : OperationalCalculusContext) where
  operatorFamilySpectralClosed : C.operatorFamilySpectral
  spectralMeasureDefinedClosed : C.spectralMeasureDefined
  functionalCalculusDefinedClosed : C.functionalCalculusDefined

def OperationalCalculusContextClosed (C : OperationalCalculusContext) : Prop :=
  C.operatorFamilySpectral ∧ C.spectralMeasureDefined ∧ C.functionalCalculusDefined

theorem operational_calculus_context_closed_from_evidence (C : OperationalCalculusContext)
    (E : OperationalCalculusContextEvidence C) : OperationalCalculusContextClosed C := by
  exact And.intro E.operatorFamilySpectralClosed (And.intro E.spectralMeasureDefinedClosed E.functionalCalculusDefinedClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse