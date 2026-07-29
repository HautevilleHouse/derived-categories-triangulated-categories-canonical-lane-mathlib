import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

structure AdmissibleClass where
  object : DerivedCategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DerivedCategoryClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse