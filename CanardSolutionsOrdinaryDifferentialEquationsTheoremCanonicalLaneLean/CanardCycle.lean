import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SlowFastSystem

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardCyclePackage {S : SlowFastSystemPackage} where
  cycleExists : Prop
  canardSegment : Prop
  delayedBifurcation : Prop
  cycleStability : Prop

structure CanardCycleEvidence {S : SlowFastSystemPackage} (C : CanardCyclePackage S) where
  cycleExistsClosed : C.cycleExists
  canardSegmentClosed : C.canardSegment
  delayedBifurcationClosed : C.delayedBifurcation
  cycleStabilityClosed : C.cycleStability

def CanardCycleClosed {S : SlowFastSystemPackage} (C : CanardCyclePackage S) : Prop :=
  C.cycleExists ∧ C.canardSegment ∧ C.delayedBifurcation ∧ C.cycleStability

theorem canard_cycle_closed_from_evidence {S : SlowFastSystemPackage} (C : CanardCyclePackage S) (E : CanardCycleEvidence C) : CanardCycleClosed C :=
  And.intro E.cycleExistsClosed (And.intro E.canardSegmentClosed (And.intro E.delayedBifurcationClosed E.cycleStabilityClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse