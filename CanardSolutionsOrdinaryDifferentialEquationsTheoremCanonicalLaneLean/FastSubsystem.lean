import HautevilleHouse.CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.SlowManifold

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure FastSubsystemPackage {S : SlowManifoldPackage} where
  fastDynamicsDefined : Prop
  fastManifoldFamily : Prop
  transversalIntersection : Prop
  foldPointAnalysis : Prop

structure FastSubsystemEvidence {S : SlowManifoldPackage} (F : FastSubsystemPackage S) where
  fastDynamicsDefinedClosed : F.fastDynamicsDefined
  fastManifoldFamilyClosed : F.fastManifoldFamily
  transversalIntersectionClosed : F.transversalIntersection
  foldPointAnalysisClosed : F.foldPointAnalysis

def FastSubsystemClosed {S : SlowManifoldPackage} (F : FastSubsystemPackage S) : Prop :=
  F.fastDynamicsDefined ∧ F.fastManifoldFamily ∧ F.transversalIntersection ∧ F.foldPointAnalysis

theorem fast_subsystem_closed_from_evidence {S : SlowManifoldPackage} (F : FastSubsystemPackage S) (E : FastSubsystemEvidence F) :
    FastSubsystemClosed F := by
  exact And.intro E.fastDynamicsDefinedClosed
    (And.intro E.fastManifoldFamilyClosed
      (And.intro E.transversalIntersectionClosed E.foldPointAnalysisClosed))

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse
