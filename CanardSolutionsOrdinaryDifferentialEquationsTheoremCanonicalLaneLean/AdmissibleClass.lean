import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardAdmittedObject where
  phaseSpace : CanardPhaseSpace
  canardSolutionExists : Prop
  conclusion : canardSolutionExists

structure CanardAdmissibleClass where
  object : CanardAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def canardAdmittedClosure (A : CanardAdmissibleClass) : Prop :=
  CanardExistenceClosed (A.object.phaseSpace) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse