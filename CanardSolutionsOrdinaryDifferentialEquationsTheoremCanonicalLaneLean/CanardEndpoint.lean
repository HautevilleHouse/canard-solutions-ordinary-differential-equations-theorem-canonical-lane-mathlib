import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardEndpointPackage {P : CanardSystemODEPackage} {E : CanardExistencePackage P} where
  endpointTime : Type u
  endpointState : Type v
  canardTermination : Prop
  regularPersistence : Prop
  observablePhenomenon : Prop
  canardSolutionClosedLoop : Prop
  endpointCharacterization : Prop

def CanardEndpointClosed {P : CanardSystemODEPackage} {E : CanardExistencePackage P} (End : CanardEndpointPackage E) : Prop :=
  End.canardTermination ∧ End.regularPersistence ∧ End.observablePhenomenon ∧ End.canardSolutionClosedLoop ∧ End.endpointCharacterization

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse