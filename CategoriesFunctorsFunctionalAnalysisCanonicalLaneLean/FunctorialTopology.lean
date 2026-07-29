import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.CategoryObjectsAndFunctors

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorialStructure where
  sourceCategory : CategoryObject
  targetCategory : CategoryObject
  objectMap : sourceCategory.morphisms → targetCategory.morphisms
  morphismMap : sourceCategory.morphisms → targetCategory.morphisms
  functorAxioms : Prop

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse