import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.CanardGeometry

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FenichelReductionPackage {S: SlowManifoldPackage} {F: FastFibrationPackage} (C: CanardGeometryPackage S F) where
  invariantManifold: Prop
  persistence: Prop
  slowDynamics: Prop
  fastDynamics: Prop

structure CenterManifoldPackage {S: SlowManifoldPackage} {F: FastFibrationPackage} (C: CanardGeometryPackage S F) where
  centerManifoldExists: Prop
  reductionOrder: Nat
  normalForm: Prop

structure CanardReductionPackage {S: SlowManifoldPackage} {F: FastFibrationPackage} {C: CanardGeometryPackage S F} 
  (Fen: FenichelReductionPackage C) (Cen: CenterManifoldPackage C) where
  reductionComplete: Prop
  approximationValidity: Prop

structure CanardReductionEvidence {S: SlowManifoldPackage} {F: FastFibrationPackage} {C: CanardGeometryPackage S F}
  {Fen: FenichelReductionPackage C} {Cen: CenterManifoldPackage C} (R: CanardReductionPackage Fen Cen) where
  reductionCompleteClosed: R.reductionComplete
  approximationValidityClosed: R.approximationValidity

def CanardReductionClosed {S: SlowManifoldPackage} {F: FastFibrationPackage} {C: CanardGeometryPackage S F}
  {Fen: FenichelReductionPackage C} {Cen: CenterManifoldPackage C} (R: CanardReductionPackage Fen Cen) : Prop :=
  R.reductionComplete ∧ R.approximationValidity

theorem canard_reduction_closed_from_evidence {S: SlowManifoldPackage} {F: FastFibrationPackage} {C: CanardGeometryPackage S F}
  {Fen: FenichelReductionPackage C} {Cen: CenterManifoldPackage C} (R: CanardReductionPackage Fen Cen) (E: CanardReductionEvidence R) : CanardReductionClosed R := by
  exact And.intro E.reductionCompleteClosed E.approximationValidityClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse