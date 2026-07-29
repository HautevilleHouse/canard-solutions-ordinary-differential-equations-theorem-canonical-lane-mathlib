import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.FastSubsystem

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardSolutionPackage {S : SlowManifoldPackage} {F : FastSubsystemPackage S} where
  trajectoryExists : Prop
  followsSlowManifold : Prop
  fastJump : Prop
  asymptoticMatching : Prop

structure CanardSolutionEvidence {S : SlowManifoldPackage} {F : FastSubsystemPackage S} (C : CanardSolutionPackage S F) where
  trajectoryExistsClosed : C.trajectoryExists
  followsSlowManifoldClosed : C.followsSlowManifold
  fastJumpClosed : C.fastJump
  asymptoticMatchingClosed : C.asymptoticMatching

def CanardSolutionClosed {S : SlowManifoldPackage} {F : FastSubsystemPackage S} (C : CanardSolutionPackage S F) : Prop :=
  C.trajectoryExists ∧ C.followsSlowManifold ∧ C.fastJump ∧ C.asymptoticMatching

theorem canard_solution_closed_from_evidence {S : SlowManifoldPackage} {F : FastSubsystemPackage S} (C : CanardSolutionPackage S F) (E : CanardSolutionEvidence C) :
    CanardSolutionClosed C := by
  exact And.intro E.trajectoryExistsClosed
    (And.intro E.followsSlowManifoldClosed
      (And.intro E.fastJumpClosed E.asymptoticMatchingClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
