import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardAdmittedObject where
  phaseSpace : Type
  topology : TopologicalSpace phaseSpace
  slowManifold : Set phaseSpace
  fastDynamics : phaseSpace → phaseSpace
  smallParameter : ℝ
  canardExists : Prop
  conclusion : canardExists

structure CanardEndgameState where
  object : CanardAdmittedObject

def CanardWitnessClosed (O : CanardAdmittedObject) : Prop :=
  O.canardExists

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
