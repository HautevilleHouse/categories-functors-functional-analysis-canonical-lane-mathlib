import CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure YonedaLemmaPackage (C : CategoryAdmittedObject) where
  yonedaEmbeddingFull : Prop
  yonedaEmbeddingFaithful : Prop
  yonedaLemmaNaturalIsomorphism : Prop

structure YonedaLemmaEvidence {C : CategoryAdmittedObject} (Y : YonedaLemmaPackage C) where
  yonedaEmbeddingFullClosed : Y.yonedaEmbeddingFull
  yonedaEmbeddingFaithfulClosed : Y.yonedaEmbeddingFaithful
  yonedaLemmaNaturalIsomorphismClosed : Y.yonedaLemmaNaturalIsomorphism

def YonedaLemmaClosed {C : CategoryAdmittedObject} (Y : YonedaLemmaPackage C) : Prop :=
  Y.yonedaEmbeddingFull ∧ Y.yonedaEmbeddingFaithful ∧ Y.yonedaLemmaNaturalIsomorphism

theorem yoneda_lemma_closed_from_evidence
    {C : CategoryAdmittedObject} (Y : YonedaLemmaPackage C)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.yonedaEmbeddingFullClosed
    (And.intro E.yonedaEmbeddingFaithfulClosed E.yonedaLemmaNaturalIsomorphismClosed)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
