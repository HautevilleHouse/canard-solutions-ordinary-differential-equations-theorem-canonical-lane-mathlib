import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.CanardGateLemmas

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

def ConstrainedCanardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_canard_endgame (A : AdmissibleClass) :
    ConstrainedCanardClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse