import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.CategoryStructure

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorPackage (C D : CategoryPackage) where
  objectMap : C.objects → D.objects
  morphismMap : C.morphisms → D.morphisms
  preservesComposition : Prop
  preservesIdentity : Prop

structure FunctorPackageEvidence {C D : CategoryPackage} (F : FunctorPackage C D) where
  preservesCompositionClosed : F.preservesComposition
  preservesIdentityClosed : F.preservesIdentity

def FunctorPackageClosed {C D : CategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.preservesComposition ∧ F.preservesIdentity

theorem functor_package_closed_from_evidence {C D : CategoryPackage} (F : FunctorPackage C D)
    (E : FunctorPackageEvidence F) : FunctorPackageClosed F := by
  exact And.intro E.preservesCompositionClosed E.preservesIdentityClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse