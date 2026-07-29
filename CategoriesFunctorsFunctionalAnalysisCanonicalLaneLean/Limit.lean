import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure ConePackage {C D : CategoryPackage} (F : FunctorPackage C D) where
  apex : D.Obj
  leg : (X : C.Obj) → D.Hom apex (F.objMap X)
  commutes : Prop

structure ConeEvidence {C D : CategoryPackage} {F : FunctorPackage C D} (K : ConePackage F) where
  commutesClosed : K.commutes

def ConeClosed {C D : CategoryPackage} {F : FunctorPackage C D} (K : ConePackage F) : Prop :=
  K.commutes

theorem cone_closed_from_evidence {C D : CategoryPackage} {F : FunctorPackage C D} (K : ConePackage F) (E : ConeEvidence K) : ConeClosed K := by
  exact E.commutesClosed

structure LimitPackage {C D : CategoryPackage} (F : FunctorPackage C D) where
  limitingCone : ConePackage F
  universality : Prop

structure LimitEvidence {C D : CategoryPackage} {F : FunctorPackage C D} (L : LimitPackage F) where
  universalityClosed : L.universality

def LimitClosed {C D : CategoryPackage} {F : FunctorPackage C D} (L : LimitPackage F) : Prop :=
  L.universality ∧ ConeClosed L.limitingCone

theorem limit_closed_from_evidence {C D : CategoryPackage} {F : FunctorPackage C D} (L : LimitPackage F) (E : LimitEvidence L) (K : ConeEvidence L.limitingCone) : LimitClosed L := by
  exact And.intro E.universalityClosed (cone_closed_from_evidence L.limitingCone K)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
