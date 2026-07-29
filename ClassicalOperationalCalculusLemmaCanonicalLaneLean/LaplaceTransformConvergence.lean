import HautevilleHouse.ClassicalOperationalCalculusLemmaCanonicalLaneLean.OperationalCalculusBridge

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure LaplaceTransformConvergencePackage {O : OperationalCalculusPackage} where
  convergenceRegion : Prop
  analyticContinuation : Prop
  residueComputation : Prop
  convergenceRegionClosed : convergenceRegion
  analyticContinuationClosed : analyticContinuation
  residueComputationClosed : residueComputation

structure LaplaceTransformConvergenceEvidence {O : OperationalCalculusPackage}
    (L : LaplaceTransformConvergencePackage O) where
  convergenceRegionClosedEvidence : L.convergenceRegion
  analyticContinuationClosedEvidence : L.analyticContinuation
  residueComputationClosedEvidence : L.residueComputation

def LaplaceTransformConvergenceClosed {O : OperationalCalculusPackage}
    (L : LaplaceTransformConvergencePackage O) : Prop :=
  L.convergenceRegion ∧ L.analyticContinuation ∧ L.residueComputation

theorem laplace_transform_convergence_closed_from_evidence
    {O : OperationalCalculusPackage} (L : LaplaceTransformConvergencePackage O)
    (E : LaplaceTransformConvergenceEvidence L) : LaplaceTransformConvergenceClosed L := by
  exact And.intro E.convergenceRegionClosedEvidence
    (And.intro E.analyticContinuationClosedEvidence E.residueComputationClosedEvidence)

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse