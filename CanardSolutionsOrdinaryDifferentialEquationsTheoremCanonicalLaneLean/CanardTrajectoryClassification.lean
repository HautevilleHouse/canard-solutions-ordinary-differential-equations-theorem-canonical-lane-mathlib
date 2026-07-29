import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardTrajectoryClassificationPackage where
  canardSolution : Type u
  trajectoryBehavior : Prop
  headAwayFromFold : Prop
  maximalTimeInterval : Prop
  sensitivityToParameter : Prop

structure CanardTrajectoryClassificationEvidence (C : CanardTrajectoryClassificationPackage) where
  canardSolutionClosed : C.canardSolution
  trajectoryBehaviorClosed : C.trajectoryBehavior
  headAwayFromFoldClosed : C.headAwayFromFold
  maximalTimeIntervalClosed : C.maximalTimeInterval
  sensitivityToParameterClosed : C.sensitivityToParameter

def CanardTrajectoryClassificationClosed (C : CanardTrajectoryClassificationPackage) : Prop :=
  C.canardSolution ∧ C.trajectoryBehavior ∧ C.headAwayFromFold ∧ C.maximalTimeInterval ∧ C.sensitivityToParameter

theorem canard_trajectory_classification_closed_from_evidence
    (C : CanardTrajectoryClassificationPackage) (E : CanardTrajectoryClassificationEvidence C) :
    CanardTrajectoryClassificationClosed C := by
  exact And.intro E.canardSolutionClosed
    (And.intro E.trajectoryBehaviorClosed
      (And.intro E.headAwayFromFoldClosed
        (And.intro E.maximalTimeIntervalClosed E.sensitivityToParameterClosed)))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
