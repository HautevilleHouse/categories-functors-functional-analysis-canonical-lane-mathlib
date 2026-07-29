import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

def ConstrainedCategoryFunctorAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_category_functor_analysis_endgame (A : AdmissibleClass) :
    ConstrainedCategoryFunctorAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse