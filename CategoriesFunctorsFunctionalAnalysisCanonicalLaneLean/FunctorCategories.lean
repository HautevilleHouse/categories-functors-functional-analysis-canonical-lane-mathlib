import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  objectMap : sourceCategory → targetCategory
  morphismMap : ∀ {X Y : sourceCategory}, (X → Y) → (objectMap X → objectMap Y)
  identityPreserved : Prop
  compositionPreserved : Prop

structure FunctorEvidence (F : FunctorPackage) where
  identityClosed : F.identityPreserved
  compositionClosed : F.compositionPreserved

def FunctorClosed (F : FunctorPackage) : Prop :=
  F.identityPreserved ∧ F.compositionPreserved

theorem functor_closed_from_evidence (F : FunctorPackage) (E : FunctorEvidence F) : FunctorClosed F := by
  exact And.intro E.identityClosed E.compositionClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse