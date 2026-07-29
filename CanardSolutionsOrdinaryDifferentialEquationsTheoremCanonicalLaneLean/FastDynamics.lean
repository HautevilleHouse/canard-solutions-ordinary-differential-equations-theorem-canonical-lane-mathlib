import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SlowManifold

/-!
# Fast Dynamics Package
-/

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FastDynamicsPackage {ε : ℝ} {h : ε > 0} (S : SlowManifoldPackage h) where
  fastVariableSpace : Type u
  fastFibers : S.slowVariableSpace → fastVariableSpace
  fastDynamics : fastVariableSpace → fastVariableSpace
  fastEquilibrium : Prop
  fastDynamicsHyperbolic : Prop

structure FastDynamicsEvidence {ε : ℝ} {h : ε > 0} {S : SlowManifoldPackage h}
    (F : FastDynamicsPackage S) where
  fastEquilibriumClosed : F.fastEquilibrium
  fastDynamicsHyperbolicClosed : F.fastDynamicsHyperbolic

def FastDynamicsClosed {ε : ℝ} {h : ε > 0} {S : SlowManifoldPackage h}
    (F : FastDynamicsPackage S) : Prop :=
  F.fastEquilibrium ∧ F.fastDynamicsHyperbolic

theorem fast_dynamics_closed_from_evidence
    {ε : ℝ} {h : ε > 0} {S : SlowManifoldPackage h}
    (F : FastDynamicsPackage S) (E : FastDynamicsEvidence F) :
    FastDynamicsClosed F := by
  exact And.intro E.fastEquilibriumClosed E.fastDynamicsHyperbolicClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse