import ClassicalOperationalCalculusLemmaCanonicalLaneLean.OperationalCalculusBridge

/-!
# Mikusinski Convolution Algebra Package
-/

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure MikusinskiConvolutionAlgebraPackage {H : HeavisideCalculusPackage} where
  fieldOfOperators : Type u
  convolutionProduct : fieldOfOperators → fieldOfOperators → fieldOfOperators
  identityElement : fieldOfOperators
  fieldAxioms : Prop
  inclusionOfContinuousFunctions : Prop
  operationalCalculusEmbedding : fieldOfOperators → Type v
  fieldAxiomsClosed : fieldAxioms
  inclusionClosed : inclusionOfContinuousFunctions
  embeddingClosed : operationalCalculusEmbedding

structure MikusinskiConvolutionAlgebraEvidence {H : HeavisideCalculusPackage} (M : MikusinskiConvolutionAlgebraPackage H) where
  fieldAxiomsClosed : M.fieldAxiomsClosed
  inclusionClosed : M.inclusionClosed
  embeddingClosed : M.embeddingClosed

def MikusinskiConvolutionAlgebraClosed {H : HeavisideCalculusPackage} (M : MikusinskiConvolutionAlgebraPackage H) : Prop :=
  M.fieldAxioms ∧ M.inclusionOfContinuousFunctions ∧ M.operationalCalculusEmbedding

theorem mikusinski_convolution_algebra_closed_from_evidence {H : HeavisideCalculusPackage}
    (M : MikusinskiConvolutionAlgebraPackage H) (E : MikusinskiConvolutionAlgebraEvidence M) :
    MikusinskiConvolutionAlgebraClosed M := by
  exact And.intro E.fieldAxiomsClosed (And.intro E.inclusionClosed E.embeddingClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
