import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardContractionPackage {P : CanardSystemODEPackage} {E : CanardExistencePackage P} where
  fastDynamicsContractionRate : Prop
  slowDynamicsLipschitz : Prop
  criticalManifoldAttraction : Prop
  canardInvariantManifold : Prop
  contractionEstimate : Prop
  asymptoticPhase : Prop

def CanardContractionClosed {P : CanardSystemODEPackage} {E : CanardExistencePackage P} (C : CanardContractionPackage E) : Prop :=
  C.fastDynamicsContractionRate ∧ C.slowDynamicsLipschitz ∧ C.criticalManifoldAttraction ∧ 
  C.canardInvariantManifold ∧ C.contractionEstimate ∧ C.asymptoticPhase

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse