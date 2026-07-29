import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SlowManifoldReductionPackage where
  slowManifoldImplicit : Prop
  centerManifoldTheory : Prop
  reductionToScalarODE : Prop
  criticalityCondition : Prop

structure SlowManifoldReductionEvidence (S : SlowManifoldReductionPackage) where
  slowManifoldImplicitClosed : S.slowManifoldImplicit
  centerManifoldTheoryClosed : S.centerManifoldTheory
  reductionToScalarODEClosed : S.reductionToScalarODE
  criticalityConditionClosed : S.criticalityCondition

def SlowManifoldReductionClosed (S : SlowManifoldReductionPackage) : Prop :=
  S.slowManifoldImplicit ∧ S.centerManifoldTheory ∧ S.reductionToScalarODE ∧ S.criticalityCondition

theorem slow_manifold_reduction_closed_from_evidence (S : SlowManifoldReductionPackage) (E : SlowManifoldReductionEvidence S) :
    SlowManifoldReductionClosed S := by
  exact And.intro E.slowManifoldImplicitClosed
    (And.intro E.centerManifoldTheoryClosed
      (And.intro E.reductionToScalarODEClosed E.criticalityConditionClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse