import ClassicalOperationalCalculusLemmaCanonicalLaneLean.OperationalCalculusAdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.linearity ∧ O.continuity ∧ O.shiftInvariant

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
