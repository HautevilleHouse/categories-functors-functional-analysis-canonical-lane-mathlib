import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.AdmissibleClass

/-!
# Functor Category Package
-/

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorCategoryPackage where
  sourceCategory : Type u
  targetCategory : Type v
  objects : Type w
  morphisms : Type x
  functorialComposition : Prop
  identityPreserved : Prop

structure FunctorCategoryEvidence (F : FunctorCategoryPackage) where
  functorialCompositionClosed : F.functorialComposition
  identityPreservedClosed : F.identityPreserved

def FunctorCategoryClosed (F : FunctorCategoryPackage) : Prop :=
  F.functorialComposition ∧ F.identityPreserved

theorem functor_category_closed_from_evidence
    (F : FunctorCategoryPackage) (E : FunctorCategoryEvidence F) :
    FunctorCategoryClosed F := by
  exact And.intro E.functorialCompositionClosed E.identityPreservedClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse