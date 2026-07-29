import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : Type v
  composition : Prop
  identity : Prop
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure CategoryPackageEvidence (C : CategoryPackage) where
  compositionClosed : C.composition
  identityClosed : C.identity
  associativityClosed : C.associativity
  identityLeftClosed : C.identityLeft
  identityRightClosed : C.identityRight

def CategoryPackageClosed (C : CategoryPackage) : Prop :=
  C.composition ∧ C.identity ∧ C.associativity ∧ C.identityLeft ∧ C.identityRight

theorem category_package_closed_from_evidence (C : CategoryPackage) (E : CategoryPackageEvidence C) :
    CategoryPackageClosed C := by
  exact And.intro E.compositionClosed
    (And.intro E.identityClosed
      (And.intro E.associativityClosed
        (And.intro E.identityLeftClosed E.identityRightClosed)))

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse