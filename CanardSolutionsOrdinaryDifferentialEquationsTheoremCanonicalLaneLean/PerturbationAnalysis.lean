import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.CanardCycleExistence

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure PerturbationPackage {S : SlowManifoldPackage} {H : SlowManifoldEvidence S}
    {C : CanardCyclePackage H} {E : CanardCycleEvidence C} where
  perturbedDynamics : Set (S.manifold) → S.manifold
  stability : Prop
  bifurcationPoint : Prop
  structuralStability : Prop

structure PerturbationEvidence {S : SlowManifoldPackage} {H : SlowManifoldEvidence S}
    {C : CanardCyclePackage H} {E : CanardCycleEvidence C} (P : PerturbationPackage) where
  stabilityClosed : P.stability
  bifurcationPointClosed : P.bifurcationPoint
  structuralStabilityClosed : P.structuralStability

def PerturbationClosed {S : SlowManifoldPackage} {H : SlowManifoldEvidence S}
    {C : CanardCyclePackage H} {E : CanardCycleEvidence C} (P : PerturbationPackage) : Prop :=
  P.stability ∧ P.bifurcationPoint ∧ P.structuralStability

theorem perturbation_closed_from_evidence {S : SlowManifoldPackage} {H : SlowManifoldEvidence S}
    {C : CanardCyclePackage H} {E : CanardCycleEvidence C} (P : PerturbationPackage) (Ev : PerturbationEvidence P) :
    PerturbationClosed P := by
  exact And.intro Ev.stabilityClosed (And.intro Ev.bifurcationPointClosed Ev.structuralStabilityClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
