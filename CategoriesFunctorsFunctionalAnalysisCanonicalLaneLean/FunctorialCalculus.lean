import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.BanachCategory

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorialCalculusPackage {B : BanachCategoryPackage} where
  functionalCalculus : ∀ (X : B.obj), (B.hom X X) → (B.hom X X)
  spectralMapping : Prop
  functionalCalculusBounded : Prop
  spectralMappingClosed : spectralMapping
  functionalCalculusBoundedClosed : functionalCalculusBounded

structure FunctorialCalculusEvidence {B : BanachCategoryPackage} (F : FunctorialCalculusPackage B) where
  spectralMappingClosed : F.spectralMapping
  functionalCalculusBoundedClosed : F.functionalCalculusBounded

def FunctorialCalculusClosed {B : BanachCategoryPackage} (F : FunctorialCalculusPackage B) : Prop :=
  F.spectralMapping ∧ F.functionalCalculusBounded

theorem functorial_calculus_closed_from_evidence {B : BanachCategoryPackage} (F : FunctorialCalculusPackage B) (E : FunctorialCalculusEvidence F) :
    FunctorialCalculusClosed F := by
  exact And.intro E.spectralMappingClosed E.functionalCalculusBoundedClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse