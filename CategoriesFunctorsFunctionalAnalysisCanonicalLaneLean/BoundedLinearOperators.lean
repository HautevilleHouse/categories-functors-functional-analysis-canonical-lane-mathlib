import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BoundedLinearOperator (X Y : Type) where
  toFun : X → Y
  linear : Prop
  bounded : Prop
  operatorNorm : ℝ
  boundedLinearClosed : Prop

structure BoundedLinearEvidence {X Y : Type} (T : BoundedLinearOperator X Y) where
  linearClosed : T.linear
  boundedClosed : T.bounded
  boundedLinearClosedClosed : T.boundedLinearClosed

def BoundedLinearClosed {X Y : Type} (T : BoundedLinearOperator X Y) : Prop :=
  T.linear ∧ T.bounded ∧ T.boundedLinearClosed

theorem bounded_linear_closed_from_evidence {X Y : Type}
    (T : BoundedLinearOperator X Y) (E : BoundedLinearEvidence T) :
    BoundedLinearClosed T := by
  exact And.intro E.linearClosed (And.intro E.boundedClosed E.boundedLinearClosedClosed)

structure OperatorAlgebra (X : Type) where
  operators : Type
  addition : operators → operators → operators
  multiplication : operators → operators → operators
  scalarMultiplication : ℝ → operators → operators
  identityElement : operators
  algebraLaws : Prop
  operatorAlgebraClosed : Prop

structure OperatorAlgebraEvidence (A : OperatorAlgebra X) where
  algebraLawsClosed : A.algebraLaws
  operatorAlgebraClosedClosed : A.operatorAlgebraClosed

def OperatorAlgebraClosed (A : OperatorAlgebra X) : Prop :=
  A.algebraLaws ∧ A.operatorAlgebraClosed

theorem operator_algebra_closed_from_evidence (A : OperatorAlgebra X)
    (E : OperatorAlgebraEvidence A) : OperatorAlgebraClosed A := by
  exact And.intro E.algebraLawsClosed E.operatorAlgebraClosedClosed

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse