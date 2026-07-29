import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardCyclePackage where
  fastVariable : Type u
  slowVariable : Type v
  timeParameter : Type w
  singularParameter : ℝ
  slowManifold : Set (fastVariable × slowVariable)
  foldCurve : slowVariable → ℝ
  canardCycle : Set (fastVariable × slowVariable)
  canardCycleExists : Prop
  canardCycleStable : Prop

structure CanardCycleEvidence (C : CanardCyclePackage) where
  canardCycleExistsClosed : C.canardCycleExists
  canardCycleStableClosed : C.canardCycleStable

def CanardCycleClosed (C : CanardCyclePackage) : Prop :=
  C.canardCycleExists ∧ C.canardCycleStable

theorem canard_cycle_closed_from_evidence (C : CanardCyclePackage) (E : CanardCycleEvidence C) :
    CanardCycleClosed C := by
  exact And.intro E.canardCycleExistsClosed E.canardCycleStableClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
