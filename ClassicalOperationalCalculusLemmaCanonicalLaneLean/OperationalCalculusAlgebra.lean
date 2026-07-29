import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure OperationalCalculusAlgebra where
  operatorDomain : Type u
  operatorCodomain : Type v
  additionOp : operatorDomain → operatorDomain → operatorDomain
  multiplicationOp : operatorDomain → operatorDomain → operatorDomain
  scalarOp : ℝ → operatorDomain → operatorDomain
  algebraIdentities : Prop
  algebraIdentitiesTerm : algebraIdentities

structure OperationalCalculusAlgebraEvidence (A : OperationalCalculusAlgebra) where
  algebraIdentitiesClosed : A.algebraIdentities

def OperationalCalculusAlgebraClosed (A : OperationalCalculusAlgebra) : Prop :=
  A.algebraIdentities

theorem operational_calculus_algebra_closed_from_evidence
    (A : OperationalCalculusAlgebra) (E : OperationalCalculusAlgebraEvidence A) :
    OperationalCalculusAlgebraClosed A := by
  exact E.algebraIdentitiesClosed

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
