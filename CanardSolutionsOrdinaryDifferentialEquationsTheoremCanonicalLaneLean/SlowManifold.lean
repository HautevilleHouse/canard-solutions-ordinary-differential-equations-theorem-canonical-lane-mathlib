import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SingularPerturbation

/-!
# Slow Manifold Package
-/

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowManifoldPackage {ε : ℝ} (h : ε > 0) where
  slowVariableSpace : Type u
  slowDynamics : slowVariableSpace → slowVariableSpace
  slowManifoldEquation : Prop
  normallyHyperbolic : Prop
  slowManifoldExists : Prop

structure SlowManifoldEvidence {ε : ℝ} {h : ε > 0} (S : SlowManifoldPackage h) where
  slowManifoldEquationClosed : S.slowManifoldEquation
  normallyHyperbolicClosed : S.normallyHyperbolic
  slowManifoldExistsClosed : S.slowManifoldExists

def SlowManifoldClosed {ε : ℝ} {h : ε > 0} (S : SlowManifoldPackage h) : Prop :=
  S.slowManifoldEquation ∧ S.normallyHyperbolic ∧ S.slowManifoldExists

theorem slow_manifold_closed_from_evidence
    {ε : ℝ} {h : ε > 0} (S : SlowManifoldPackage h) (E : SlowManifoldEvidence S) :
    SlowManifoldClosed S := by
  exact And.intro E.slowManifoldEquationClosed
    (And.intro E.normallyHyperbolicClosed E.slowManifoldExistsClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse