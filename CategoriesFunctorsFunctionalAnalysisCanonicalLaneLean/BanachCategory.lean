import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BanachCategoryPackage where
  BanachSpaces : Type u
  BoundedLinearMaps : BanachSpaces → BanachSpaces → Type v
  identityMap : (X : BanachSpaces) → BoundedLinearMaps X X
  composition : {X Y Z : BanachSpaces} → BoundedLinearMaps X Y → BoundedLinearMaps Y Z → BoundedLinearMaps X Z
  norm : {X Y : BanachSpaces} → BoundedLinearMaps X Y → ℝ
  triangleInequality : Prop
  operatorNormComplete : Prop

structure BanachCategoryEvidence (B : BanachCategoryPackage) where
  triangleInequalityClosed : B.triangleInequality
  operatorNormCompleteClosed : B.operatorNormComplete

def BanachCategoryClosed (B : BanachCategoryPackage) : Prop :=
  B.triangleInequality ∧ B.operatorNormComplete

theorem banach_category_closed_from_evidence (B : BanachCategoryPackage) (E : BanachCategoryEvidence B) : BanachCategoryClosed B := by
  exact And.intro E.triangleInequalityClosed E.operatorNormCompleteClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
