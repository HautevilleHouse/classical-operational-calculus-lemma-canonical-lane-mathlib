import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.LaplaceTransformBridge

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure DifferentialOperatorClosure {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} (L : LaplaceTransformBridge F) where
  differentialOperator : Type u
  heisenbergCommutation : Prop
  integrationOperator : Prop
  operatorIdentity : Prop
  operatorIdentitiesTerm : operatorIdentity

structure DifferentialOperatorEvidence {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} {L : LaplaceTransformBridge F}
    (D : DifferentialOperatorClosure L) where
  operatorIdentitiesClosed : D.operatorIdentity

def DifferentialOperatorClosed {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} {L : LaplaceTransformBridge F}
    (D : DifferentialOperatorClosure L) : Prop :=
  D.operatorIdentity

theorem differential_operator_closed_from_evidence
    {A : OperationalCalculusAlgebra} {F : FunctionalCalculusPackage A}
    {L : LaplaceTransformBridge F} (D : DifferentialOperatorClosure L)
    (E : DifferentialOperatorEvidence D) : DifferentialOperatorClosed D := by
  exact E.operatorIdentitiesClosed

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
