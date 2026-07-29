import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

structure DerivedCategoryObject where
  triCat : TriangulatedCategory
  tStructure : Prop
  derivedFunctorExistence : Prop
  derivedEquivalence : Prop
  closed : Prop

structure DerivedCategoryEvidence (D : DerivedCategoryObject) where
  tStructureClosed : D.tStructure
  derivedFunctorExistenceClosed : D.derivedFunctorExistence
  derivedEquivalenceClosed : D.derivedEquivalence

def DerivedCategoryClosed (D : DerivedCategoryObject) : Prop :=
  D.tStructure ∧ D.derivedFunctorExistence ∧ D.derivedEquivalence

theorem derived_category_closed_from_evidence (D : DerivedCategoryObject)
    (E : DerivedCategoryEvidence D) : DerivedCategoryClosed D := by
  exact And.intro E.tStructureClosed
    (And.intro E.derivedFunctorExistenceClosed E.derivedEquivalenceClosed)

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse