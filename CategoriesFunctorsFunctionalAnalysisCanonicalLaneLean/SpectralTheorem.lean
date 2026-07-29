import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.BanachSpace

/-!
# Spectral Theorem Package
-/

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure SpectralTheoremPackage (B : BanachSpacePackage) where
  operator : Type u
  selfAdjoint : Prop
  spectrum : Prop
  spectralDecomposition : Prop

structure SpectralTheoremEvidence {B : BanachSpacePackage} (S : SpectralTheoremPackage B) where
  selfAdjointClosed : S.selfAdjoint
  spectrumClosed : S.spectrum
  spectralDecompositionClosed : S.spectralDecomposition

def SpectralTheoremClosed {B : BanachSpacePackage} (S : SpectralTheoremPackage B) : Prop :=
  S.selfAdjoint ∧ S.spectrum ∧ S.spectralDecomposition

theorem spectral_theorem_closed_from_evidence
    {B : BanachSpacePackage} (S : SpectralTheoremPackage B) (E : SpectralTheoremEvidence S) :
    SpectralTheoremClosed S := by
  exact And.intro E.selfAdjointClosed (And.intro E.spectrumClosed E.spectralDecompositionClosed)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse