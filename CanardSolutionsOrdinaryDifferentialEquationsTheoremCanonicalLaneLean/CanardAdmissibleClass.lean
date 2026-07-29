import CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CanardAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CanardWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse