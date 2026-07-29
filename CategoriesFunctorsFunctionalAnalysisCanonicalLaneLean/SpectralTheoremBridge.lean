import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure SpectralTheoremBridgePackage where
  operatorAlgebra : Type u
  spectrumObject : Type v
  functionalCalculus : Type w
  spectralDualPairing : Type x
  categoryEnriched : Prop
  spectralDecompositionClosed : Prop

def SpectralTheoremBridgePackageClosed (B : SpectralTheoremBridgePackage) : Prop :=
  B.categoryEnriched ∧ B.spectralDecompositionClosed

structure SpectralTheoremBridgeEvidence (B : SpectralTheoremBridgePackage) where
  categoryEnrichedClosed : B.categoryEnriched
  spectralDecompositionClosedClosed : B.spectralDecompositionClosed

theorem spectral_theorem_bridge_package_closed_from_evidence
    (B : SpectralTheoremBridgePackage) (E : SpectralTheoremBridgeEvidence B) :
    SpectralTheoremBridgePackageClosed B := by
  exact And.intro E.categoryEnrichedClosed E.spectralDecompositionClosedClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
