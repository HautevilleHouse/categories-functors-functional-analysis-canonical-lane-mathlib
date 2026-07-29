import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure BanachSpace where
  vectorSpace : Type
  norm : vectorSpace → ℝ
  normedSpaceAxioms : Prop

structure BoundedLinearMap where
  domain : BanachSpace
  codomain : BanachSpace
  map : domain.vectorSpace → codomain.vectorSpace
  boundedness : Prop

theorem bounded_linear_map_closed (f : BoundedLinearMap) : f.boundedness := by
  exact f.boundedness

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse