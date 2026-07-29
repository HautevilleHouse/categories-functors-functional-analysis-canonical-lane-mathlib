import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure AdmittedObject where
  source : Type u
  target : Type v
  functor : source → target
  structurePreserved : Prop

structure Admissible (A : AdmittedObject) where
  bridge : Prop
  remainder : Prop
  witness : bridge ∨ remainder

def closure (A : AdmittedObject) : Prop :=
  A.structurePreserved ∧ (∃ (b : Admissible A), b.bridge ∨ b.remainder)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse