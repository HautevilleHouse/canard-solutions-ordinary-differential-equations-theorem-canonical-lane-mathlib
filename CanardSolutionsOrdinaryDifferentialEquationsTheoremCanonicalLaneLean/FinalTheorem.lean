import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.GeometricSingularPerturbation

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

def CanardAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem canard_admissible_endgame (A : AdmissibleClass) :
    CanardAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
