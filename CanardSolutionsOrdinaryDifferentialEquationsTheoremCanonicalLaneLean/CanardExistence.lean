import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardExistencePackage (P : CanardSystemODEPackage) where
  criticalManifoldRegularity : Prop
  fastSubsystemStability : Prop
  slowSubsystemFlow : Prop
  canardTrajectoryExists : Prop
  maximalExtension : Prop
  transitionTimeEstimate : Prop
  canardPhenomenonDefinition : Prop

def CanardExistenceClosed (P : CanardSystemODEPackage) (E : CanardExistencePackage P) : Prop :=
  E.criticalManifoldRegularity ∧ E.fastSubsystemStability ∧ E.slowSubsystemFlow ∧ 
  E.canardTrajectoryExists ∧ E.maximalExtension ∧ E.transitionTimeEstimate ∧ E.canardPhenomenonDefinition

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse