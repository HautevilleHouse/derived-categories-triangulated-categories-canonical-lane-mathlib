import DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  triangulatedConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "derived-categories-triangulated-categories-canonical-lane",
    theoremName := "Derived Categories Triangulated Categories",
    theoremObject := "Admissible-class bridge for the trianguated structure of derived categories",
    classicalBoundary := "Unrestricted classical closure of the derived category statement remains carried",
    triangulatedConstrainedStatement := "Triangulated-constrained theorem certificate internalized through bridge/gate closure",
    certificateLane := "triangulated_constrained",
    carriedRemainder := "Classical source boundary carried by the formalization certificate"
  }

end DerivedCategoriesTriangulatedCategoriesCanonicalLaneLean
end HautevilleHouse
