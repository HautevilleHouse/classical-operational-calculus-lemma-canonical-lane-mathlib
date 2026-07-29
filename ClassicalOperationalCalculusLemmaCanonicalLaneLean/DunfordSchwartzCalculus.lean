import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.SectorialOperatorTheory

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure DunfordSchwartzPackage {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} {P : SectorialOperatorPackage T}
    (E : SectorialOperatorEvidence P) where
  dunfordSchwartzMeasure : Type u
  spectrumContained : Prop
  integralRepresentation : Prop
  resolventConvergence : Prop

structure DunfordSchwartzEvidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} {P : SectorialOperatorPackage T}
    {E : SectorialOperatorEvidence P} (D : DunfordSchwartzPackage E) where
  spectrumContainedClosed : D.spectrumContained
  integralRepresentationClosed : D.integralRepresentation
  resolventConvergenceClosed : D.resolventConvergence

def DunfordSchwartzClosed {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} {P : SectorialOperatorPackage T}
    {E : SectorialOperatorEvidence P} (D : DunfordSchwartzPackage E) : Prop :=
  D.spectrumContained ∧ D.integralRepresentation ∧ D.resolventConvergence

theorem dunford_schwartz_closed_from_evidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} {P : SectorialOperatorPackage T}
    {E : SectorialOperatorEvidence P} (D : DunfordSchwartzPackage E)
    (Ev : DunfordSchwartzEvidence D) : DunfordSchwartzClosed D := by
  exact And.intro Ev.spectrumContainedClosed (And.intro Ev.integralRepresentationClosed Ev.resolventConvergenceClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse