import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = 0
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  complete : Prop

structure BoundedFunctor (V W : BanachSpace) where
  map : V.carrier → W.carrier
  linear : ∀ x y : V.carrier, map (x + y) = map x + map y
  bounded : ∃ C : ℝ, ∀ x : V.carrier, W.norm (map x) ≤ C * V.norm x

structure BoundedFunctorCategory where
  objects : Type u
  morphisms : (A B : objects) → Type v
  composition : ∀ {A B C : objects}, morphisms A B → morphisms B C → morphisms A C
  identities : ∀ A : objects, morphisms A A
  associativity : ∀ {A B C D : objects} (f : morphisms A B) (g : morphisms B C) (h : morphisms C D), composition (composition f g) h = composition f (composition g h)
  identity_left : ∀ {A B : objects} (f : morphisms A B), composition (identities A) f = f
  identity_right : ∀ {A B : objects} (f : morphisms A B), composition f (identities B) = f

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse