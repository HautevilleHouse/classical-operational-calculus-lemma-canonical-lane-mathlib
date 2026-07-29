import Mathlib.Algebra.Algebra

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : OperationalAdmittedObject
  analyticContinuationSatisfied : Prop
  branchCutRecorded : Prop
  gateWitness : analyticContinuationSatisfied ∨ branchCutRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OperationalWitnessClosed A.object ∧ (A.analyticContinuationSatisfied ∨ A.branchCutRecorded)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
