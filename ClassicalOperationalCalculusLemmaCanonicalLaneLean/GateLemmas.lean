import ClassicalOperationalCalculusLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.analyticContinuationSatisfied ∨ A.branchCutRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
