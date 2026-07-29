import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CanardSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CanardAdmittedObject where
  space : CanardSpace
  dynamicSystem : Prop
  slowManifold : Prop
  fastDynamics : Prop
  canardSolution : Prop
  conclusion : canardSolution

def CanardWitnessClosed (O : CanardAdmittedObject) : Prop :=
  O.canardSolution

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse