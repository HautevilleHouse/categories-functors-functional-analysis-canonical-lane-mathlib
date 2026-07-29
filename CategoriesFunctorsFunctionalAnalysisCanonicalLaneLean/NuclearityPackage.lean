import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean

structure NuclearityPackage where
  nuclearSpace : Type u
  projectiveTensorProduct : Type v
  injectiveTensorProduct : Type w
  traceClass : Type x
  isNuclear : Prop
  tensorProductCorrespondence : Prop
  traceClassDefined : Prop

def NuclearityPackageClosed (N : NuclearityPackage) : Prop :=
  N.isNuclear ∧ N.tensorProductCorrespondence ∧ N.traceClassDefined

structure NuclearityEvidence (N : NuclearityPackage) where
  isNuclearClosed : N.isNuclear
  tensorProductCorrespondenceClosed : N.tensorProductCorrespondence
  traceClassDefinedClosed : N.traceClassDefined

theorem nuclearity_package_closed_from_evidence
    (N : NuclearityPackage) (E : NuclearityEvidence N) :
    NuclearityPackageClosed N := by
  exact And.intro E.isNuclearClosed
    (And.intro E.tensorProductCorrespondenceClosed E.traceClassDefinedClosed)

end CategoriesFunctorsFunctionalAnalysisCanonicalLaneLean
end HautevilleHouse
