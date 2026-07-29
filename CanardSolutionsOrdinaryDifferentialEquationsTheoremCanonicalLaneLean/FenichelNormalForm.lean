import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FenichelNormalFormPackage where
  slowSystem : Type u
  fastSystem : Type v
  normalForm : Prop
  coordinateTransformation : Prop
  parameterExpansion : Prop

structure FenichelNormalFormEvidence (F : FenichelNormalFormPackage) where
  normalFormClosed : F.normalForm
  coordinateTransformationClosed : F.coordinateTransformation
  parameterExpansionClosed : F.parameterExpansion

def FenichelNormalFormClosed (F : FenichelNormalFormPackage) : Prop :=
  F.normalForm ∧ F.coordinateTransformation ∧ F.parameterExpansion

theorem fenichel_normal_form_closed_from_evidence
    (F : FenichelNormalFormPackage) (E : FenichelNormalFormEvidence F) :
    FenichelNormalFormClosed F := by
  exact And.intro E.normalFormClosed
    (And.intro E.coordinateTransformationClosed E.parameterExpansionClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
