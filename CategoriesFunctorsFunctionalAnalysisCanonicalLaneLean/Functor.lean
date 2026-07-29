import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctorPackage {C D : CategoryPackage} where
  objMap : C.Obj → D.Obj
  homMap : {X Y : C.Obj} → C.Hom X Y → D.Hom (objMap X) (objMap Y)
  preservesIds : Prop
  preservesComp : Prop

structure FunctorEvidence {C D : CategoryPackage} (F : FunctorPackage C D) where
  preservesIdsClosed : F.preservesIds
  preservesCompClosed : F.preservesComp

def FunctorClosed {C D : CategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.preservesIds ∧ F.preservesComp

theorem functor_closed_from_evidence {C D : CategoryPackage} (F : FunctorPackage C D) (E : FunctorEvidence F) : FunctorClosed F := by
  exact And.intro E.preservesIdsClosed E.preservesCompClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
