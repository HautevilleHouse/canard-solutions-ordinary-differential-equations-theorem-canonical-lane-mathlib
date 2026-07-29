import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowFastPackage (S : SingularPerturbationPackage) where
  slowManifoldDynamics : Type u
  fastLayerDynamics : Type v
  canardTrajectory : Prop
  maximalCanardTime : ℝ
  canardCondition : Prop
  canardConditionProof : canardCondition

structure SlowFastEvidence (S : SingularPerturbationPackage) (SF : SlowFastPackage S) where
  canardTrajectoryClosed : SF.canardTrajectory
  canardConditionClosed : SF.canardCondition

def SlowFastClosed (SF : SlowFastPackage S) : Prop :=
  SF.canardTrajectory ∧ SF.canardCondition

theorem slow_fast_closed_from_evidence
    (SF : SlowFastPackage S) (E : SlowFastEvidence S SF) :
    SlowFastClosed SF := by
  exact And.intro E.canardTrajectoryClosed E.canardConditionClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
