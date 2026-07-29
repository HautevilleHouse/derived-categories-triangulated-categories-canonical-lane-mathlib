import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

structure TriangulatedCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  shift : Obj → Obj
  exactTriangles : Set (Obj × Obj × Obj)
  shiftInverse : shift ∘ shift ≅ id
  octahedralAxiom : Prop
  homologicalFunctor : (C : Type w) → (C → C) → Prop

structure TriangulatedCategoryEvidence (C : TriangulatedCategory) where
  shiftInverseClosed : C.shiftInverse
  octahedralAxiomClosed : C.octahedralAxiom

def TriangulatedCategoryClosed (C : TriangulatedCategory) : Prop :=
  C.octahedralAxiom ∧ C.shiftInverse

theorem triangulated_category_closed_from_evidence (C : TriangulatedCategory)
    (E : TriangulatedCategoryEvidence C) : TriangulatedCategoryClosed C := by
  exact And.intro E.octahedralAxiomClosed E.shiftInverseClosed

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse