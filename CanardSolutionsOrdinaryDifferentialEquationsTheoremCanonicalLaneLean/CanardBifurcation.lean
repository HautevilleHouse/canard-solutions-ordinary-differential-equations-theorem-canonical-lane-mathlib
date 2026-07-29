import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardBifurcationPackage {P : CanardSystemODEPackage} (E : CanardExistencePackage P) where
  bifurcationParameterSpace : Type u
  criticalManifoldFold : Prop
  canardEruption : Prop
  delayStabilityLoss : Prop
  parameterRange : Prop
  bifurcationDiagramDefined : Prop
  canardExplosionCondition : Prop

def CanardBifurcationClosed {P : CanardSystemODEPackage} {E : CanardExistencePackage P} (B : CanardBifurcationPackage E) : Prop :=
  B.criticalManifoldFold ∧ B.canardEruption ∧ B.delayStabilityLoss ∧ B.parameterRange ∧ B.bifurcationDiagramDefined ∧ B.canardExplosionCondition

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse