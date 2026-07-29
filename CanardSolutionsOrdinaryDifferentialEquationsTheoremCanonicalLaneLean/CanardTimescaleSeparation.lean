import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure TimescaleSeparationPackage where
  slowTimeScale : ℝ
  fastTimeScale : ℝ
  epsilonParameter : ℝ
  scaleSeparationCondition : Prop
  asymptoticUnfolding : Prop

structure TimescaleSeparationEvidence (T : TimescaleSeparationPackage) where
  scaleSeparationConditionClosed : T.scaleSeparationCondition
  asymptoticUnfoldingClosed : T.asymptoticUnfolding

def TimescaleSeparationClosed (T : TimescaleSeparationPackage) : Prop :=
  T.scaleSeparationCondition ∧ T.asymptoticUnfolding

theorem timescale_separation_closed_from_evidence
    (T : TimescaleSeparationPackage) (E : TimescaleSeparationEvidence T) :
    TimescaleSeparationClosed T := by
  exact And.intro E.scaleSeparationConditionClosed E.asymptoticUnfoldingClosed

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
