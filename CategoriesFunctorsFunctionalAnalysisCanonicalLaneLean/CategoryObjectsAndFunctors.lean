import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure CategoryObject where
  morphisms : Type
  composition : morphisms → morphisms → morphisms
  identity : morphisms

structure CategoryAdmittedObject where
  category : CategoryObject
  categoryAxioms : Prop
  conclusion : categoryAxioms

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.categoryAxioms

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse