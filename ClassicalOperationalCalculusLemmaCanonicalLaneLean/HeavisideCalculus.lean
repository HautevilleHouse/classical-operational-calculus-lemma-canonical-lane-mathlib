import ClassicalOperationalCalculusLemmaCanonicalLaneLean.MathlibObjects

/-!
# Heaviside Calculus Package
-/

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure HeavisideCalculusPackage where
  heavisideFunction : Type u
  derivativeInSenseOfDistributions : Prop
  operationalCalculusLemma : Prop
  heavisideFunctionDefined : heavisideFunction
  derivativeClosed : derivativeInSenseOfDistributions
  lemmaClosed : operationalCalculusLemma

structure HeavisideCalculusEvidence (H : HeavisideCalculusPackage) where
  heavisideFunctionDefinedClosed : H.heavisideFunctionDefined
  derivativeClosed : H.derivativeClosed
  lemmaClosed : H.lemmaClosed

def HeavisideCalculusClosed (H : HeavisideCalculusPackage) : Prop :=
  H.heavisideFunctionDefined ∧ H.derivativeInSenseOfDistributions ∧ H.operationalCalculusLemma

theorem heaviside_calculus_closed_from_evidence (H : HeavisideCalculusPackage) (E : HeavisideCalculusEvidence H) :
    HeavisideCalculusClosed H := by
  exact And.intro E.heavisideFunctionDefinedClosed (And.intro E.derivativeClosed E.lemmaClosed)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
