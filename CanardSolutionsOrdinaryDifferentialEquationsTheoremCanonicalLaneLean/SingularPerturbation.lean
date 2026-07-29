import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.CanardCycle

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SingularPerturbationPackage {S : SlowFastSystemPackage} {C : CanardCyclePackage S} where
  epsilonSmall : ℝ
  asymptoticExpansion : Prop
  regularPerturbation : Prop
  blowUpTechnique : Prop

structure SingularPerturbationEvidence {S : SlowFastSystemPackage} {C : CanardCyclePackage S} (P : SingularPerturbationPackage S C) where
  epsilonSmallClosed : P.epsilonSmall > 0
  asymptoticExpansionClosed : P.asymptoticExpansion
  regularPerturbationClosed : P.regularPerturbation
  blowUpTechniqueClosed : P.blowUpTechnique

def SingularPerturbationClosed {S : SlowFastSystemPackage} {C : CanardCyclePackage S} (P : SingularPerturbationPackage S C) : Prop :=
  P.epsilonSmall > 0 ∧ P.asymptoticExpansion ∧ P.regularPerturbation ∧ P.blowUpTechnique

theorem singular_perturbation_closed_from_evidence {S : SlowFastSystemPackage} {C : CanardCyclePackage S} (P : SingularPerturbationPackage S C) (E : SingularPerturbationEvidence P) : SingularPerturbationClosed P :=
  And.intro E.epsilonSmallClosed (And.intro E.asymptoticExpansionClosed (And.intro E.regularPerturbationClosed E.blowUpTechniqueClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse