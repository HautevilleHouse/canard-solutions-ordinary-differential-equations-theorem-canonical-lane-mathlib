import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure SingularPerturbationPackage where
  fastVariable : Type u
  slowVariable : Type v
  parameterDomain : ℝ
  fastEquation : fastVariable → ℝ → fastVariable
  slowEquation : fastVariable → slowVariable → ℝ → slowVariable
  timescaleSeparation : Prop
  criticalManifold : Prop
  normalHyperbolicity : Prop

structure SingularPerturbationEvidence (S : SingularPerturbationPackage) where
  timescaleSeparationClosed : S.timescaleSeparation
  criticalManifoldClosed : S.criticalManifold
  normalHyperbolicityClosed : S.normalHyperbolicity

def SingularPerturbationClosed (S : SingularPerturbationPackage) : Prop :=
  S.timescaleSeparation ∧ S.criticalManifold ∧ S.normalHyperbolicity

theorem singular_perturbation_closed_from_evidence
    (S : SingularPerturbationPackage) (E : SingularPerturbationEvidence S) :
    SingularPerturbationClosed S := by
  exact And.intro E.timescaleSeparationClosed
    (And.intro E.criticalManifoldClosed E.normalHyperbolicityClosed)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
