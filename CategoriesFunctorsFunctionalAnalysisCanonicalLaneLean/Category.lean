import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure CategoryPackage where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  assoc : Prop
  leftUnit : Prop
  rightUnit : Prop

structure CategoryEvidence (C : CategoryPackage) where
  assocClosed : C.assoc
  leftUnitClosed : C.leftUnit
  rightUnitClosed : C.rightUnit

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.assoc ∧ C.leftUnit ∧ C.rightUnit

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) : CategoryClosed C := by
  exact And.intro E.assocClosed (And.intro E.leftUnitClosed E.rightUnitClosed)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
