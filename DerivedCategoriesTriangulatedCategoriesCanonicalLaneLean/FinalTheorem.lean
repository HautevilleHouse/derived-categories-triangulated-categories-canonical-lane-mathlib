import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

def ConstrainedDerivedCategoriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem derived_categories_endgame (A : AdmissibleClass) :
    ConstrainedDerivedCategoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse