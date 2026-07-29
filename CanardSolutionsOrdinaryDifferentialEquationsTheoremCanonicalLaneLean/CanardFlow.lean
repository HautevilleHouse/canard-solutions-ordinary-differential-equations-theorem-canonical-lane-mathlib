import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardFlowPackage where
  timeDomain : ℝ
  vectorField : CanardPhaseSpace → ℝ → CanardPhaseSpace.base.carrier → ℝ
  slowEquation : Prop
  fastEquation : Prop
  initialCondition : Prop

structure CanardFlowEvidence (F : CanardFlowPackage) where
  slowEquationClosed : F.slowEquation
  fastEquationClosed : F.fastEquation
  initialConditionClosed : F.initialCondition

def CanardFlowClosed (F : CanardFlowPackage) : Prop :=
  F.slowEquation ∧ F.fastEquation ∧ F.initialCondition

theorem canard_flow_closed_from_evidence (F : CanardFlowPackage) (E : CanardFlowEvidence F) :
    CanardFlowClosed F := by
  exact And.intro E.slowEquationClosed (And.intro E.fastEquationClosed E.initialConditionClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse