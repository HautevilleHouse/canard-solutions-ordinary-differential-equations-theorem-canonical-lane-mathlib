import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SlowManifoldGeometry

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardCyclePackage {S : SlowManifoldPackage} (H : SlowManifoldEvidence S) where
  cycle : Set (S.manifold)
  periodicOrbit : Prop
  canardProperty : Prop
  epsilonRange : Set ℝ

structure CanardCycleEvidence {S : SlowManifoldPackage} {H : SlowManifoldEvidence S} (C : CanardCyclePackage H) where
  periodicOrbitClosed : C.periodicOrbit
  canardPropertyClosed : C.canardProperty
  epsilonRangeClosed : C.epsilonRange = Set.univ

def CanardCycleClosed {S : SlowManifoldPackage} {H : SlowManifoldEvidence S} (C : CanardCyclePackage H) : Prop :=
  C.periodicOrbit ∧ C.canardProperty

theorem canard_cycle_closed_from_evidence {S : SlowManifoldPackage} {H : SlowManifoldEvidence S} (C : CanardCyclePackage H) (E : CanardCycleEvidence C) :
    CanardCycleClosed C := by
  exact And.intro E.periodicOrbitClosed E.canardPropertyClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
