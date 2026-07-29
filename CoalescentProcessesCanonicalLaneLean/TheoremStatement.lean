import HautevilleHouse.CoalescentProcessesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CoalescentProcessesCanonicalLaneLean

structure CoalescentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoalescentAdmittedObject where
  space : CoalescentSpace
  geneLineageCoalesced : Prop
  effectivePopulationSize : Prop
  coalescenceRate : Prop
  treeTopology : Type
  treeTopologySpace : TopologicalSpace treeTopology
  homeomorphicToKingman : Prop
  conclusion : homeomorphicToKingman

def CoalescentWitnessClosed (O : CoalescentAdmittedObject) : Prop :=
  O.homeomorphicToKingman

def sourceCoalescentStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := "Coalescent processes: Kingman coalescent as universal limit",
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  manifoldConstrainedStatement := "coalescent-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end CoalescentProcessesCanonicalLaneLean
end HautevilleHouse