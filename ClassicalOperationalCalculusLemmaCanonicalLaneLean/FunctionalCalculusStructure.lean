import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.ClassicalOperationalCalculusLemma

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure FunctionalCalculusStructure {C : OperationalCalculusContext}
    (F : OperationalCalculusContextEvidence C) where
  continuousFunctionalCalculus : Prop
  boundedBorelCalculus : Prop
  spectralMappingTheorem : Prop
  functionalCalculusComposition : Prop

structure FunctionalCalculusStructureEvidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} (S : FunctionalCalculusStructure F) where
  continuousFunctionalCalculusClosed : S.continuousFunctionalCalculus
  boundedBorelCalculusClosed : S.boundedBorelCalculus
  spectralMappingTheoremClosed : S.spectralMappingTheorem
  functionalCalculusCompositionClosed : S.functionalCalculusComposition

def FunctionalCalculusStructureClosed {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} (S : FunctionalCalculusStructure F) : Prop :=
  S.continuousFunctionalCalculus ∧ S.boundedBorelCalculus ∧
  S.spectralMappingTheorem ∧ S.functionalCalculusComposition

theorem functional_calculus_structure_closed_from_evidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} (S : FunctionalCalculusStructure F)
    (E : FunctionalCalculusStructureEvidence S) : FunctionalCalculusStructureClosed S := by
  exact And.intro E.continuousFunctionalCalculusClosed
    (And.intro E.boundedBorelCalculusClosed
      (And.intro E.spectralMappingTheoremClosed E.functionalCalculusCompositionClosed))

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse