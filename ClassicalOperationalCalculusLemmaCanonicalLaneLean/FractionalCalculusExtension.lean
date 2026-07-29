import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.DifferentialOperatorClosure

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure FractionalCalculusExtension {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} {L : LaplaceTransformBridge F}
    (D : DifferentialOperatorClosure L) where
  fractionalOperator : ℝ → A.operatorDomain → A.operatorDomain
  semigroupProperty : Prop
  compositionProperty : Prop
  fractionalIdentities : Prop
  fractionalIdentitiesTerm : fractionalIdentities

structure FractionalCalculusEvidence {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} {L : LaplaceTransformBridge F}
    {D : DifferentialOperatorClosure L}
    (R : FractionalCalculusExtension D) where
  fractionalIdentitiesClosed : R.fractionalIdentities

def FractionalCalculusClosed {A : OperationalCalculusAlgebra}
    {F : FunctionalCalculusPackage A} {L : LaplaceTransformBridge F}
    {D : DifferentialOperatorClosure L}
    (R : FractionalCalculusExtension D) : Prop :=
  R.fractionalIdentities

theorem fractional_calculus_closed_from_evidence
    {A : OperationalCalculusAlgebra} {F : FunctionalCalculusPackage A}
    {L : LaplaceTransformBridge F} {D : DifferentialOperatorClosure L}
    (R : FractionalCalculusExtension D) (E : FractionalCalculusEvidence R) :
    FractionalCalculusClosed R := by
  exact E.fractionalIdentitiesClosed

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
