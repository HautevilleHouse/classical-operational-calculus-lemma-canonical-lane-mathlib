import ClassicalOperationalCalculusLemmaCanonicalLaneLean.TheoremStatement
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OperationalFunctionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  algebra : Algebra ℂ carrier

structure OperationalAdmittedObject where
  space : OperationalFunctionSpace
  singleValued : Prop
  analyticContinuationExists : Prop
  branchCutStructure : Type
  branchCutTopology : TopologicalSpace branchCutStructure
  branchCutResolved : Prop
  conclusion : branchCutResolved

def OperationalWitnessClosed (O : OperationalAdmittedObject) : Prop :=
  O.branchCutResolved

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
