import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.FunctorCategory

/-!
# Banach Space Package
-/

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BanachSpacePackage where
  vectorSpace : Type u
  norm : vectorSpace → ℝ
  completeness : Prop
  normed : Prop
  linearity : Prop

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  completenessClosed : B.completeness
  normedClosed : B.normed
  linearityClosed : B.linearity

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.completeness ∧ B.normed ∧ B.linearity

theorem banach_space_closed_from_evidence
    (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.completenessClosed (And.intro E.normedClosed E.linearityClosed)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse