import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.FunctionalCalculusStructure

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure SectorialOperatorPackage {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C}
    {S : FunctionalCalculusStructure F} (T : FunctionalCalculusStructureEvidence S) where
  sectorialOperator : Prop
  sectorAngle : ℝ
  resolventEstimates : Prop
  analyticSemigroupGenerated : Prop

structure SectorialOperatorEvidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} (P : SectorialOperatorPackage T) where
  sectorialOperatorClosed : P.sectorialOperator
  resolventEstimatesClosed : P.resolventEstimates
  analyticSemigroupGeneratedClosed : P.analyticSemigroupGenerated

def SectorialOperatorClosed {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} (P : SectorialOperatorPackage T) : Prop :=
  P.sectorialOperator ∧ P.resolventEstimates ∧ P.analyticSemigroupGenerated

theorem sectorial_operator_closed_from_evidence {C : OperationalCalculusContext}
    {F : OperationalCalculusContextEvidence C} {S : FunctionalCalculusStructure F}
    {T : FunctionalCalculusStructureEvidence S} (P : SectorialOperatorPackage T)
    (E : SectorialOperatorEvidence P) : SectorialOperatorClosed P := by
  exact And.intro E.sectorialOperatorClosed (And.intro E.resolventEstimatesClosed E.analyticSemigroupGeneratedClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse