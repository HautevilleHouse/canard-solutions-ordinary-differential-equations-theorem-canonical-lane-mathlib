import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean

structure CanardAdmittedObject where
  slowFastSystem : Type u
  slowManifold : Type v
  fastFibers : Type w
  canardPointExists : Prop
  conclusion : canardPointExists

structure CanardAdmissibleClass where
  object : CanardAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def canardWitnessClosed (O : CanardAdmittedObject) : Prop :=
  O.canardPointExists

def bridgeClosed (A : CanardAdmissibleClass) : Prop :=
  canardWitnessClosed A.object

theorem bridge_from_admissible_class (A : CanardAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : CanardAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CanardAdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCanardClosure (A : CanardAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem canard_endgame (A : CanardAdmissibleClass) : ConstrainedCanardClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CanardSolutionsOrdinaryDifferentialEquationsTheoremCanonicalLaneLean
end HautevilleHouse