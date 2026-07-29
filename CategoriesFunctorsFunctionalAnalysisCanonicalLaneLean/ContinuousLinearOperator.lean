import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure ContinuousLinearOperator (V W : BanachSpace) where
  map : V.carrier → W.carrier
  linearity : Prop
  boundedness : Prop

structure OperatorEvidence {V W : BanachSpace} (T : ContinuousLinearOperator V W) where
  linearityClosed : T.linearity
  boundednessClosed : T.boundedness

def OperatorClosed {V W : BanachSpace} (T : ContinuousLinearOperator V W) : Prop :=
  T.linearity ∧ T.boundedness

theorem operator_closed_from_evidence {V W : BanachSpace} (T : ContinuousLinearOperator V W) (E : OperatorEvidence T) : OperatorClosed T := by
  exact And.intro E.linearityClosed E.boundednessClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse