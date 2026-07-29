import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivedCategoryClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closed

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse