import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardPerturbationPackage where
  singularParameter : ℝ
  regularPerturbation : Prop
  melnikovFunction : Prop
  bifurcationCurve : Prop
  criticalTransition : Prop

structure CanardPerturbationEvidence (P : CanardPerturbationPackage) where
  regularPerturbationClosed : P.regularPerturbation
  melnikovFunctionClosed : P.melnikovFunction
  bifurcationCurveClosed : P.bifurcationCurve
  criticalTransitionClosed : P.criticalTransition

def CanardPerturbationClosed (P : CanardPerturbationPackage) : Prop :=
  P.regularPerturbation ∧ P.melnikovFunction ∧ P.bifurcationCurve ∧ P.criticalTransition

theorem canard_perturbation_closed_from_evidence (P : CanardPerturbationPackage) (E : CanardPerturbationEvidence P) :
    CanardPerturbationClosed P := by
  exact And.intro E.regularPerturbationClosed
    (And.intro E.melnikovFunctionClosed
      (And.intro E.bifurcationCurveClosed E.criticalTransitionClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse