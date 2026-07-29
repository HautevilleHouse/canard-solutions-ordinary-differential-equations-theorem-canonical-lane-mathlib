import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowManifoldPackage where
  manifold: Type
  stableFibration: Prop
  unstableFibration: Prop
  normalHyperbolicity: Prop

structure FastFibrationPackage where
  base: Type
  fiber: Type
  foliation: Prop
  fastDynamics: Prop

structure CanardGeometryPackage (S: SlowManifoldPackage) (F: FastFibrationPackage) where
  intersection: Prop
  canardPoint: Prop
  criticality: Prop

structure CanardGeometryEvidence {S: SlowManifoldPackage} {F: FastFibrationPackage} (C: CanardGeometryPackage S F) where
  intersectionClosed: C.intersection
  canardPointClosed: C.canardPoint
  criticalityClosed: C.criticality

def CanardGeometryClosed {S: SlowManifoldPackage} {F: FastFibrationPackage} (C: CanardGeometryPackage S F) : Prop :=
  C.intersection ∧ C.canardPoint ∧ C.criticality

theorem canard_geometry_closed_from_evidence {S: SlowManifoldPackage} {F: FastFibrationPackage} (C: CanardGeometryPackage S F) (E: CanardGeometryEvidence C) : CanardGeometryClosed C := by
  exact And.intro E.intersectionClosed (And.intro E.canardPointClosed E.criticalityClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse