import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  vectorSpace : Prop
  normedAddCommGroup : Prop
  complete : Prop
  banachSpaceClosed : Prop

structure BanachSpaceEvidence (B : BanachSpace) where
  vectorSpaceClosed : B.vectorSpace
  normedAddCommGroupClosed : B.normedAddCommGroup
  completeClosed : B.complete
  banachSpaceClosedClosed : B.banachSpaceClosed

def BanachSpaceClosed (B : BanachSpace) : Prop :=
  B.vectorSpace ∧ B.normedAddCommGroup ∧ B.complete ∧ B.banachSpaceClosed

theorem banach_space_closed_from_evidence (B : BanachSpace)
    (E : BanachSpaceEvidence B) : BanachSpaceClosed B := by
  exact And.intro E.vectorSpaceClosed
    (And.intro E.normedAddCommGroupClosed
      (And.intro E.completeClosed E.banachSpaceClosedClosed))

structure HilbertSpace extends BanachSpace where
  innerProduct : carrier → carrier → ℝ
  innerProductSesquilinear : Prop
  innerProductPositiveDefinite : Prop
  hilbertSpaceClosed : Prop

structure HilbertSpaceEvidence (H : HilbertSpace) where
  banachEvidence : BanachSpaceEvidence H.toBanachSpace
  innerProductSesquilinearClosed : H.innerProductSesquilinear
  innerProductPositiveDefiniteClosed : H.innerProductPositiveDefinite
  hilbertSpaceClosedClosed : H.hilbertSpaceClosed

def HilbertSpaceClosed (H : HilbertSpace) : Prop :=
  BanachSpaceClosed H.toBanachSpace ∧ H.innerProductSesquilinear ∧
  H.innerProductPositiveDefinite ∧ H.hilbertSpaceClosed

theorem hilbert_space_closed_from_evidence (H : HilbertSpace)
    (E : HilbertSpaceEvidence H) : HilbertSpaceClosed H := by
  exact And.intro (banach_space_closed_from_evidence H.toBanachSpace E.banachEvidence)
    (And.intro E.innerProductSesquilinearClosed
      (And.intro E.innerProductPositiveDefiniteClosed E.hilbertSpaceClosedClosed))

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse