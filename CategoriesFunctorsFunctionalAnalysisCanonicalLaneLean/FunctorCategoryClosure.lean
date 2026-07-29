import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorCategoryClosurePackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorCategory : Type w
  naturalTransformationSpace : Type x
  isClosedMonoidal : Prop
  naturalTransformationComplete : Prop

def FunctorCategoryClosurePackageClosed (C : FunctorCategoryClosurePackage) : Prop :=
  C.isClosedMonoidal ∧ C.naturalTransformationComplete

structure FunctorCategoryClosureEvidence (C : FunctorCategoryClosurePackage) where
  isClosedMonoidalClosed : C.isClosedMonoidal
  naturalTransformationCompleteClosed : C.naturalTransformationComplete

theorem functor_category_closure_package_closed_from_evidence
    (C : FunctorCategoryClosurePackage) (E : FunctorCategoryClosureEvidence C) :
    FunctorCategoryClosurePackageClosed C := by
  exact And.intro E.isClosedMonoidalClosed E.naturalTransformationCompleteClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
