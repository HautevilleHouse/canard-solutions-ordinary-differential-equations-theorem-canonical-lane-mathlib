import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowManifoldPackage where
  fastVariable : Type u
  slowVariable : Type v
  timeParameter : Type w
  singularParameter : ℝ
  fastDynamics : fastVariable → timeParameter → ℝ
  slowDynamics : slowVariable → timeParameter → ℝ
  criticalManifold : Set (fastVariable × slowVariable)
  normallyHyperbolic : Prop
  slowManifoldExists : Prop
  slowManifoldAttracts : Prop

structure SlowManifoldEvidence (S : SlowManifoldPackage) where
  normallyHyperbolicClosed : S.normallyHyperbolic
  slowManifoldExistsClosed : S.slowManifoldExists
  slowManifoldAttractsClosed : S.slowManifoldAttracts

def SlowManifoldClosed (S : SlowManifoldPackage) : Prop :=
  S.normallyHyperbolic ∧ S.slowManifoldExists ∧ S.slowManifoldAttracts

theorem slow_manifold_closed_from_evidence (S : SlowManifoldPackage) (E : SlowManifoldEvidence S) :
    SlowManifoldClosed S := by
  exact And.intro E.normallyHyperbolicClosed (And.intro E.slowManifoldExistsClosed E.slowManifoldAttractsClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
