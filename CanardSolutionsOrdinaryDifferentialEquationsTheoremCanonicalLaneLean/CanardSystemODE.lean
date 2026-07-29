import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardSystemODEPackage where
  timeDomain : Type u
  stateSpace : Type v
  slowVariable : Type w
  fastVariable : Type x
  parameter : Type y
  fastTimeScale : Prop
  slowTimeScale : Prop
  criticalManifoldDefined : Prop
  canardSolutionConditions : Prop
  singularPerturbationForm : Prop

def CanardSystemODEClosed (P : CanardSystemODEPackage) : Prop :=
  P.fastTimeScale ∧ P.slowTimeScale ∧ P.criticalManifoldDefined ∧ P.canardSolutionConditions ∧ P.singularPerturbationForm

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse