import ClassicalOperationalCalculusLemmaCanonicalLaneLean.OperatorCalculusBridge

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure MikusinskiOperatorPackage where
  functionField : Type
  convolutionProduct : functionField → functionField → functionField
  additiveIdentity : functionField
  multiplicativeIdentity : functionField
  additiveInverse : functionField → functionField
  divisionInterpretation : functionField → functionField → Prop
  associative : Prop
  commutative : Prop
  distributive : Prop
  identityElements : Prop
  divisionConsistent : Prop

structure MikusinskiOperatorEvidence (M : MikusinskiOperatorPackage) where
  associativeClosed : M.associative
  commutativeClosed : M.commutative
  distributiveClosed : M.distributive
  identityElementsClosed : M.identityElements
  divisionConsistentClosed : M.divisionConsistent

def MikusinskiOperatorClosed (M : MikusinskiOperatorPackage) : Prop :=
  M.associative ∧ M.commutative ∧ M.distributive ∧ M.identityElements ∧ M.divisionConsistent

theorem mikusinski_operator_closed_from_evidence
    (M : MikusinskiOperatorPackage) (E : MikusinskiOperatorEvidence M) :
    MikusinskiOperatorClosed M := by
  exact And.intro E.associativeClosed
    (And.intro E.commutativeClosed
      (And.intro E.distributiveClosed
        (And.intro E.identityElementsClosed E.divisionConsistentClosed)))

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
