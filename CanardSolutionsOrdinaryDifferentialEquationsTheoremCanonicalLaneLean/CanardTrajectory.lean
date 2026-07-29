import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SingularPerturbation

/-!
# Canard Trajectory Package
-/

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardTrajectoryPackage {ε : ℝ} {h : ε > 0}
    (S : SlowManifoldPackage h) (F : FastDynamicsPackage S)
    (P : SingularPerturbationPackage h) where
  trajectoryExists : Prop
  trajectoryFollowsSlowManifold : Prop
  trajectoryCrossesFastFiber : Prop
  canardTimeScale : Prop

structure CanardTrajectoryEvidence {ε : ℝ} {h : ε > 0}
    {S : SlowManifoldPackage h} {F : FastDynamicsPackage S}
    {P : SingularPerturbationPackage h}
    (C : CanardTrajectoryPackage S F P) where
  trajectoryExistsClosed : C.trajectoryExists
  trajectoryFollowsSlowManifoldClosed : C.trajectoryFollowsSlowManifold
  trajectoryCrossesFastFiberClosed : C.trajectoryCrossesFastFiber
  canardTimeScaleClosed : C.canardTimeScale

def CanardTrajectoryClosed {ε : ℝ} {h : ε > 0}
    {S : SlowManifoldPackage h} {F : FastDynamicsPackage S}
    {P : SingularPerturbationPackage h}
    (C : CanardTrajectoryPackage S F P) : Prop :=
  C.trajectoryExists ∧ C.trajectoryFollowsSlowManifold ∧
  C.trajectoryCrossesFastFiber ∧ C.canardTimeScale

theorem canard_trajectory_closed_from_evidence
    {ε : ℝ} {h : ε > 0} {S : SlowManifoldPackage h}
    {F : FastDynamicsPackage S} {P : SingularPerturbationPackage h}
    (C : CanardTrajectoryPackage S F P)
    (E : CanardTrajectoryEvidence C) : CanardTrajectoryClosed C := by
  exact And.intro E.trajectoryExistsClosed
    (And.intro E.trajectoryFollowsSlowManifoldClosed
      (And.intro E.trajectoryCrossesFastFiberClosed E.canardTimeScaleClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse