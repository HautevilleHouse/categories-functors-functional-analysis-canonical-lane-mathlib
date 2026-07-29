import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure AdjointFunctorPair (F G : Type → Type) where
  unit : ∀ X, X → G (F X)
  counit : ∀ X, F (G X) → X
  triangleIdentities : Prop
  naturalityUnit : Prop
  naturalityCounit : Prop
  adjunctionClosed : Prop

structure AdjointFunctorEvidence {F G : Type → Type} (A : AdjointFunctorPair F G) where
  triangleIdentitiesClosed : A.triangleIdentities
  naturalityUnitClosed : A.naturalityUnit
  naturalityCounitClosed : A.naturalityCounit
  adjunctionClosedClosed : A.adjunctionClosed

def AdjointFunctorClosed {F G : Type → Type} (A : AdjointFunctorPair F G) : Prop :=
  A.triangleIdentities ∧ A.naturalityUnit ∧ A.naturalityCounit ∧ A.adjunctionClosed

theorem adjoint_functor_closed_from_evidence {F G : Type → Type}
    (A : AdjointFunctorPair F G) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.triangleIdentitiesClosed
    (And.intro E.naturalityUnitClosed
      (And.intro E.naturalityCounitClosed E.adjunctionClosedClosed))

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse