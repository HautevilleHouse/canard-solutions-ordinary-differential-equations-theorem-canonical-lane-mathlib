import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowFastSystemPackage where
  epsilon : ℝ
  slowEquation : ℝ → ℝ → ℝ
  fastEquation : ℝ → ℝ → ℝ
  slowManifoldDefined : Prop
  fastDynamicsWellPosed : Prop
  canardCondition : Prop

structure SlowFastSystemEvidence (S : SlowFastSystemPackage) where
  slowManifoldDefinedClosed : S.slowManifoldDefined
  fastDynamicsWellPosedClosed : S.fastDynamicsWellPosed
  canardConditionClosed : S.canardCondition

def SlowFastSystemClosed (S : SlowFastSystemPackage) : Prop :=
  S.slowManifoldDefined ∧ S.fastDynamicsWellPosed ∧ S.canardCondition

theorem slow_fast_system_closed_from_evidence (S : SlowFastSystemPackage)
    (E : SlowFastSystemEvidence S) : SlowFastSystemClosed S :=
  And.intro E.slowManifoldDefinedClosed
    (And.intro E.fastDynamicsWellPosedClosed E.canardConditionClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse