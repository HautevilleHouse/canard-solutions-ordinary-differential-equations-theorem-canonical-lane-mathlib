import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SlowManifoldGeometry
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.CanardCyclePersistence

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure GeometricSingularPerturbationPackage where
  slowManifold : SlowManifoldPackage
  canardCycle : CanardCyclePackage
  layerProblem : Prop
  blowUpMethodApplied : Prop
  duckTrajectoryEmerged : Prop
  hopfBifurcationNearCanard : Prop

structure GeometricSingularPerturbationEvidence (G : GeometricSingularPerturbationPackage) where
  layerProblemClosed : G.layerProblem
  blowUpMethodAppliedClosed : G.blowUpMethodApplied
  duckTrajectoryEmergedClosed : G.duckTrajectoryEmerged
  hopfBifurcationNearCanardClosed : G.hopfBifurcationNearCanard

def GeometricSingularPerturbationClosed (G : GeometricSingularPerturbationPackage) : Prop :=
  G.layerProblem ∧ G.blowUpMethodApplied ∧ G.duckTrajectoryEmerged ∧ G.hopfBifurcationNearCanard

theorem geometric_singular_perturbation_closed_from_evidence
    (G : GeometricSingularPerturbationPackage) (E : GeometricSingularPerturbationEvidence G) :
    GeometricSingularPerturbationClosed G := by
  exact And.intro E.layerProblemClosed
    (And.intro E.blowUpMethodAppliedClosed
      (And.intro E.duckTrajectoryEmergedClosed E.hopfBifurcationNearCanardClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
