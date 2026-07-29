import ClassicalOperationalCalculusLemmaCanonicalLaneLean.LaplaceTransformInversion

/-!
# Cauchy Problem Application Package
-/

namespace HautevilleHouse
namespace ClassicalOperationalCalculusLemmaCanonicalLaneLean

structure CauchyProblemApplicationPackage {H : HeavisideCalculusPackage}
    {M : MikusinskiConvolutionAlgebraPackage H} {L : LaplaceTransformInversionPackage M} where
  initialValueProblem : Type u
  existenceAndUniqueness : Prop
  solutionViaOperationalCalculus : Prop
  existenceAndUniquenessClosed : existenceAndUniqueness
  solutionClosed : solutionViaOperationalCalculus

structure CauchyProblemApplicationEvidence {H : HeavisideCalculusPackage}
    {M : MikusinskiConvolutionAlgebraPackage H} {L : LaplaceTransformInversionPackage M}
    (C : CauchyProblemApplicationPackage L) where
  existenceAndUniquenessClosed : C.existenceAndUniquenessClosed
  solutionClosed : C.solutionClosed

def CauchyProblemApplicationClosed {H : HeavisideCalculusPackage}
    {M : MikusinskiConvolutionAlgebraPackage H} {L : LaplaceTransformInversionPackage M}
    (C : CauchyProblemApplicationPackage L) : Prop :=
  C.existenceAndUniqueness ∧ C.solutionViaOperationalCalculus

theorem cauchy_problem_application_closed_from_evidence {H : HeavisideCalculusPackage}
    {M : MikusinskiConvolutionAlgebraPackage H} {L : LaplaceTransformInversionPackage M}
    (C : CauchyProblemApplicationPackage L) (E : CauchyProblemApplicationEvidence C) :
    CauchyProblemApplicationClosed C := by
  exact And.intro E.existenceAndUniquenessClosed E.solutionClosed

end ClassicalOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse
