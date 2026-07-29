import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure FunctionalAnalyticContext where
  underlyingCategory : Type u
  monoidalStructure : Type v
  enrichedFunctorCategory : Type w
  dualSpace : Type x
  spectralTriple : Type y
  categorySmooth : Prop
  monoidalClosed : Prop
  enrichmentComplete : Prop
  dualSpaceReflexive : Prop
  spectralTripleDependsOnFunctionalAnalyticChoice : Prop

structure FunctionalAnalyticContextEvidence (C : FunctionalAnalyticContext) where
  categorySmoothClosed : C.categorySmooth
  monoidalClosedClosed : C.monoidalClosed
  enrichmentCompleteClosed : C.enrichmentComplete
  dualSpaceReflexiveClosed : C.dualSpaceReflexive
  spectralTripleDependsOnFunctionalAnalyticChoiceClosed : C.spectralTripleDependsOnFunctionalAnalyticChoice

def FunctionalAnalyticContextClosed (C : FunctionalAnalyticContext) : Prop :=
  C.categorySmooth ∧ C.monoidalClosed ∧ C.enrichmentComplete ∧ C.dualSpaceReflexive ∧ C.spectralTripleDependsOnFunctionalAnalyticChoice

theorem functional_analytic_context_closed_from_evidence
    (C : FunctionalAnalyticContext) (E : FunctionalAnalyticContextEvidence C) :
    FunctionalAnalyticContextClosed C := by
  exact And.intro E.categorySmoothClosed
    (And.intro E.monoidalClosedClosed
      (And.intro E.enrichmentCompleteClosed
        (And.intro E.dualSpaceReflexiveClosed E.spectralTripleDependsOnFunctionalAnalyticChoiceClosed)))

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
