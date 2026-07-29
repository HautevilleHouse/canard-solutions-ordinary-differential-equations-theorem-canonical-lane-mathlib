import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure GeometricTheoryPackage (S : SingularPerturbationPackage) (SF : SlowFastPackage S) where
  reducedSystem : Type u
  layerEquation : Type v
  canardPoint : Prop
  foldPoint : Prop
  maximalCanard : Prop
  duckTrajectory : Prop
  canardPointClosed : canardPoint
  foldPointClosed : foldPoint
  maximalCanardClosed : maximalCanard
  duckTrajectoryClosed : duckTrajectory

structure GeometricTheoryEvidence (G : GeometricTheoryPackage S SF) where
  canardPointClosed : G.canardPoint
  foldPointClosed : G.foldPoint
  maximalCanardClosed : G.maximalCanard
  duckTrajectoryClosed : G.duckTrajectory

def GeometricTheoryClosed (G : GeometricTheoryPackage S SF) : Prop :=
  G.canardPoint ∧ G.foldPoint ∧ G.maximalCanard ∧ G.duckTrajectory

theorem geometric_theory_closed_from_evidence
    (G : GeometricTheoryPackage S SF) (E : GeometricTheoryEvidence G) :
    GeometricTheoryClosed G := by
  exact And.intro E.canardPointClosed
    (And.intro E.foldPointClosed
      (And.intro E.maximalCanardClosed E.duckTrajectoryClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
