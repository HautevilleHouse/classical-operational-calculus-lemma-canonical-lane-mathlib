import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.OperationalCalculusAlgebra

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure FunctionalCalculusPackage {A : OperationalCalculusAlgebra} where
  functionClass : Type u
  evaluationMap : functionClass → A.operatorDomain → A.operatorDomain
  spectralMapping : Prop
  compositionRule : Prop
  functionalIdentities : Prop
  functionalIdentitiesTerm : functionalIdentities

structure FunctionalCalculusEvidence {A : OperationalCalculusAlgebra}
    (F : FunctionalCalculusPackage A) where
  functionalIdentitiesClosed : F.functionalIdentities

def FunctionalCalculusClosed {A : OperationalCalculusAlgebra}
    (F : FunctionalCalculusPackage A) : Prop :=
  F.functionalIdentities

theorem functional_calculus_closed_from_evidence
    {A : OperationalCalculusAlgebra} (F : FunctionalCalculusPackage A)
    (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F := by
  exact E.functionalIdentitiesClosed

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
