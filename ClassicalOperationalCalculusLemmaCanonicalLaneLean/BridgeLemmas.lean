import ClassicalOperationalCalculusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OperationalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
