import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FunctionalAnalyticSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FunctionalAnalyticAdmittedObject where
  space : FunctionalAnalyticSpace
  banachSpace : Prop
  functorCategory : Prop
  spectralTheorem : Prop
  conclusion : banachSpace ∧ functorCategory ∧ spectralTheorem

structure FunctionalAnalyticEndgameState where
  object : FunctionalAnalyticAdmittedObject

def FunctionalAnalyticWitnessClosed (O : FunctionalAnalyticAdmittedObject) : Prop :=
  O.conclusion

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse