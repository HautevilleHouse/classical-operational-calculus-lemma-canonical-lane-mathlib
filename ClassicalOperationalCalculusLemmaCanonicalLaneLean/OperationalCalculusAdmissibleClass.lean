import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure OperationalCalculusAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  functionSpace : carrier → carrier → ℝ
  linearity : Prop
  continuity : Prop
  shiftInvariant : Prop
  conclusion : linearity ∧ continuity ∧ shiftInvariant

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
