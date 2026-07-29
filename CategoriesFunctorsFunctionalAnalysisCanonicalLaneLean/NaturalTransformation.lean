import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure NaturalTransformationPackage (F G : FunctorPackage) where
  component : ∀ (X : F.sourceCategory), F.objectMap X → G.objectMap X
  naturality : Prop

structure NaturalTransformationEvidence {F G : FunctorPackage} (T : NaturalTransformationPackage F G) where
  naturalityClosed : T.naturality

def NaturalTransformationClosed {F G : FunctorPackage} (T : NaturalTransformationPackage F G) : Prop :=
  T.naturality

theorem natural_transformation_closed_from_evidence {F G : FunctorPackage} (T : NaturalTransformationPackage F G) (E : NaturalTransformationEvidence T) : NaturalTransformationClosed T := by
  exact E.naturalityClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse