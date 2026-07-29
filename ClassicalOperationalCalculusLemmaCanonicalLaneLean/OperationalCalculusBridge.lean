import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure OperationalCalculusPackage where
  operator : Type u
  transform : Type v
  inverseTransform : Type w
  operationalCalculusLemma : Prop
  operatorDomain : Prop
  transformApplied : Prop
  inverseApplied : Prop

structure OperationalCalculusEvidence (O : OperationalCalculusPackage) where
  operationalCalculusLemmaClosed : O.operationalCalculusLemma
  operatorDomainClosed : O.operatorDomain
  transformAppliedClosed : O.transformApplied
  inverseAppliedClosed : O.inverseApplied

def OperationalCalculusClosed (O : OperationalCalculusPackage) : Prop :=
  O.operationalCalculusLemma ∧ O.operatorDomain ∧ O.transformApplied ∧ O.inverseApplied

theorem operational_calculus_closed_from_evidence
    (O : OperationalCalculusPackage) (E : OperationalCalculusEvidence O) :
    OperationalCalculusClosed O := by
  exact And.intro E.operationalCalculusLemmaClosed
    (And.intro E.operatorDomainClosed
      (And.intro E.transformAppliedClosed E.inverseAppliedClosed))

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse