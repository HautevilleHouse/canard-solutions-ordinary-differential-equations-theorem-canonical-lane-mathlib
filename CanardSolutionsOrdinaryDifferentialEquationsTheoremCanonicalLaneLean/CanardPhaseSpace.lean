import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothAtlas : Type
  dimensionTwo : Prop
  slowManifold : carrier → Prop
  fastManifold : carrier → Prop

structure CanardPhaseSpace where
  base : CanardManifold
  slowVariable : base.carrier → ℝ
  fastVariable : base.carrier → ℝ
  layerFunction : base.carrier → ℝ
  criticalSet : base.carrier → Prop
  regularPerturbation : Prop

def canardPhaseSpaceClosed (P : CanardPhaseSpace) : Prop :=
  P.regularPerturbation ∧ P.criticalSet P.base.carrier

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse