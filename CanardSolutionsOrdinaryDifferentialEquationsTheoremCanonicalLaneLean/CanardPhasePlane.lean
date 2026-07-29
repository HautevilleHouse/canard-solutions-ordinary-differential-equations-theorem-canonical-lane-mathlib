import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardPhasePlanePackage where
  fastVariable : Type
  slowVariable : Type
  phaseSpace : Type
  fastEquation : Prop
  slowEquation : Prop
  slowManifold : Prop
  singularPerturbationParameter : ℝ

structure CanardPhasePlaneEvidence (P : CanardPhasePlanePackage) where
  fastEquationClosed : P.fastEquation
  slowEquationClosed : P.slowEquation
  slowManifoldClosed : P.slowManifold
  singularPerturbationParameterPositive : P.singularPerturbationParameter > 0

def CanardPhasePlaneClosed (P : CanardPhasePlanePackage) : Prop :=
  P.fastEquation ∧ P.slowEquation ∧ P.slowManifold ∧ (P.singularPerturbationParameter > 0)

theorem canard_phase_plane_closed_from_evidence (P : CanardPhasePlanePackage) (E : CanardPhasePlaneEvidence P) :
    CanardPhasePlaneClosed P := by
  exact And.intro E.fastEquationClosed
    (And.intro E.slowEquationClosed
      (And.intro E.slowManifoldClosed E.singularPerturbationParameterPositive))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse