%{
#include <ogdf/module/LayeredCrossMinModule.h>
#include <ogdf/planarity/SubgraphPlanarizer.h>
#include <ogdf/layered/GridSifting.h>
#include <ogdf/module/CrossingMinimizationModule.h>
#include <ogdf/layered/OptimalHierarchyLayout.h>
#include <ogdf/energybased/multilevelmixer/MultilevelBuilder.h>
#include <ogdf/energybased/multilevelmixer/EdgeCoverMerger.h>
#include <ogdf/energybased/multilevelmixer/IndependentSetMerger.h>
#include <ogdf/energybased/multilevelmixer/LocalBiconnectedMerger.h>
#include <ogdf/energybased/multilevelmixer/MatchingMerger.h>
#include <ogdf/energybased/multilevelmixer/SolarMerger.h>
#include <ogdf/energybased/multilevelmixer/RandomMerger.h>
#include <ogdf/energybased/multilevelmixer/BarycenterPlacer.h>
#include <ogdf/energybased/multilevelmixer/CirclePlacer.h>
#include <ogdf/energybased/multilevelmixer/InitialPlacer.h>
#include <ogdf/energybased/multilevelmixer/MedianPlacer.h>
#include <ogdf/energybased/multilevelmixer/RandomPlacer.h>
#include <ogdf/energybased/multilevelmixer/SolarPlacer.h>
#include <ogdf/energybased/multilevelmixer/ZeroPlacer.h>
#include <ogdf/layered/OptimalRanking.h>
#include <ogdf/layered/CoffmanGrahamRanking.h>
#include <ogdf/layered/LongestPathRanking.h>
#include <ogdf/planarity/FastPlanarSubgraph.h>
#include <ogdf/planarity/FixedEmbeddingInserter.h>
#include <ogdf/planarity/VariableEmbeddingInserter.h>
#include <ogdf/planarity/VariableEmbeddingInserterDyn.h>
#include <ogdf/planarity/MultiEdgeApproxInserter.h>
#include <ogdf/misclayout/BalloonLayout.h>
#include <ogdf/misclayout/CircularLayout.h>
#include <ogdf/upward/DominanceLayout.h>
#include <ogdf/planarity/EmbedderMaxFace.h>
#include <ogdf/planarity/EmbedderMaxFaceLayers.h>
#include <ogdf/planarity/EmbedderMinDepth.h>
#include <ogdf/planarity/EmbedderMinDepthMaxFace.h>
#include <ogdf/planarity/EmbedderMinDepthMaxFaceLayers.h>
#include <ogdf/planarity/EmbedderMinDepthPiTa.h>
#include <ogdf/module/EmbedderModule.h>
#include <ogdf/planarity/EmbedderOptimalFlexDraw.h>
#include <ogdf/module/LayoutPlanRepModule.h>
#include <ogdf/planarity/MaximalPlanarSubgraphSimple.h>
//#include <ogdf/planarity/MaximumPlanarSubgraph.h>
#include <ogdf/orthogonal/OrthoLayout.h>
#include <ogdf/cluster/ClusterOrthoLayout.h>
#include <ogdf/cluster/ClusterPlanarizationLayout.h>
#include <ogdf/upward/UpwardPlanarizationLayout.h>
#include <ogdf/planarity/PlanarizationLayout.h>
#include <ogdf/tree/RadialTreeLayout.h>
#include <ogdf/planarity/SimpleEmbedder.h>
#include <ogdf/packing/TileToRowsCCPacker.h>
#include <ogdf/tree/RadialTreeLayout.h>
#include <ogdf/tree/TreeLayout.h>
#include <ogdf/module/UPRLayoutModule.h>
#include <ogdf/upward/UpwardPlanarizationLayout.h>
#include <ogdf/upward/VisibilityLayout.h>
%}

namespace ogdf {
  %nodefault;
  class LayoutModule {
  };

  class MultilevelGraph;
  class MultilevelBuilder {
  public:
    void setEdgeLengthAdjustment(int factor);
    int getNumLevels();
  };

  class EdgeCoverMerger : public MultilevelBuilder {
  public:
    EdgeCoverMerger();
    void setFactor(double factor);
  };
  class IndependentSetMerger : public MultilevelBuilder {
  public:
    void setSearchDepthBase(float base);
    IndependentSetMerger();
  };
  class LocalBiconnectedMerger : public MultilevelBuilder {
  public:
    void setFactor(double factor);
  };
  class MatchingMerger : public MultilevelBuilder {
  public:
    void selectByNodeMass(bool on);
  };
  class RandomMerger : public MultilevelBuilder {
  public:
    void setFactor(double factor);
  };
  class SolarMerger : public MultilevelBuilder {
  public:
    SolarMerger(bool simple = false, bool massAsNodeRadius = false);
  };

  class InitialPlacer {
  public:
    void setRandomOffset(bool on);
  };
  class SolarPlacer : public InitialPlacer {
  };
  class RandomPlacer : public InitialPlacer {
  public:
    void setCircleSize(double factor);
  };
  class CirclePlacer : public InitialPlacer {
  public:
    enum NodeSelection {
      nsNew,
      nsOld,
      nsAll
    };
    void setRadiusFixed(bool fixed);
    void setCircleSize(float sizeIncrease);
    void setNodeSelection(NodeSelection nodeSel);
  };
  class ZeroPlacer : public InitialPlacer {
  public:
    void setRandomRange(double range);
  };
  class BarycenterPlacer : public InitialPlacer {
  public:
    void weightedPositionPriority(bool on);
  };
  class MedianPlacer : public InitialPlacer {
  };

  class HierarchyLayoutModule {
  };
  class FastHierarchyLayout : public HierarchyLayoutModule {
  public:
    double nodeDistance();
    void nodeDistance(double dist);
    double layerDistance();
    void layerDistance(double dist);
    bool fixedLayerDistance();
    void fixedLayerDistance(bool b);
  };
  class FastSimpleHierarchyLayout : public HierarchyLayoutModule {
  public:
    double nodeDistance();
    void nodeDistance(double dist);
    double layerDistance();
    void layerDistance(double dist);
    bool downward();
    void downward(bool d);
    bool leftToRight();
    void leftToRight(bool b);
    bool balanced();
    void balanced(bool b);
  };
  class OptimalHierarchyLayout : public HierarchyLayoutModule {
  public:
    double nodeDistance();
    void nodeDistance(double x);
    double layerDistance();
    void layerDistance(double x);
    bool fixedLayerDistance();
    void fixedLayerDistance(bool b);
    double weightSegments();
    void weightSegments(double w);
    double weightBalancing();
    void weightBalancing(double w);
  };

  class RankingModule {
  };
  class OptimalRanking : public RankingModule {
  public:
    bool separateMultiEdges();
    void separateMultiEdges(bool b);
    void setSubgraph(AcyclicSubgraphModule *pSubgraph);
  };
  class LongestPathRanking : public RankingModule {
  public:
    bool separateDeg0Layer();
    void separateDeg0Layer(bool sdl);
    bool separateMultiEdges();
    void separateMultiEdges(bool b);
    bool optimizeEdgeLength();
    void optimizeEdgeLength(bool b);
    bool alignBaseClasses();
    void alignBaseClasses(bool b);
    bool alignSiblings();
    void alignSiblings(bool b);
    void setSubgraph(AcyclicSubgraphModule *pSubgraph);
  };
  class CoffmanGrahamRanking : public RankingModule {
  public:
    void setSubgraph(AcyclicSubgraphModule *pSubgraph);
    int width();
    void width (int w);
  };
  class AcyclicSubgraphModule {
  };
  class DfsAcyclicSubgraph : public AcyclicSubgraphModule {
  };
  class GreedyCycleRemoval : public AcyclicSubgraphModule {
  };

  class LayeredCrossMinModule {
  };
  class LayerByLayerSweep : public LayeredCrossMinModule {
  };
  class GlobalSifting : public LayeredCrossMinModule {
  public:
    int nRepeats();
    void nRepeats(int num);
  };
  class GridSifting : public LayeredCrossMinModule {
  public:
    int verticalStepsBound();
    void verticalStepsBound(int b);
  };

  class HierarchyClusterLayoutModule {
  };

  %nodefault;
  class CrossingMinimizationModule {
  };
  class SubgraphPlanarizer : public CrossingMinimizationModule {
    void setSubgraph(PlanarSubgraphModule *pSubgraph);
    void setInserter(EdgeInsertionModule *pInserter);
    void permutations(int p);
    void setTimeout(bool b);
  };

  class PlanarSubgraphModule {};
  class MaximalPlanarSubgraphSimple : public PlanarSubgraphModule {};
//  class MaximumPlanarSubgraph : public PlanarSubgraphModule {};
  class FastPlanarSubgraph : public PlanarSubgraphModule {
  public:
    void runs (int nRuns);
  };

  enum RemoveReinsertType {
    rrNone,
    rrInserted,
    rrMostCrossed,
    rrAll,
    rrIncremental,
    rrIncInserted
  };

  class EdgeInsertionModule {};
  class FixedEmbeddingInserter : public EdgeInsertionModule {
  public:
    void removeReinsert(RemoveReinsertType rrOption);
    void percentMostCrossed(double percent);
    void keepEmbedding(bool keep);
    
  };
  class VariableEmbeddingInserter : public EdgeInsertionModule {
  public:
    void removeReinsert(RemoveReinsertType rrOption);
    void percentMostCrossed(double percent);
  };
  class MultiEdgeApproxInserter : public EdgeInsertionModule {
  public:
    void removeReinsertFix(RemoveReinsertType rrOption);
    void removeReinsertVar(RemoveReinsertType rrOption);
    void percentMostCrossedFix(double percent);
    void percentMostCrossedVar(double percent);
    void statistics(bool b);
  };
  class VariableEmbeddingInserterDyn : public EdgeInsertionModule {
  public:
    void removeReinsert(RemoveReinsertType rrOption);
    void percentMostCrossed(double percent);
  };

  class EmbedderModule {};
  class EmbedderMaxFaceLayers : public EmbedderModule {};
  class EmbedderMinDepth : public EmbedderModule {};
  class EmbedderMaxFace : public EmbedderModule {};
  class SimpleEmbedder : public EmbedderModule {};
  class EmbedderMinDepthMaxFace : public EmbedderModule {};
  class EmbedderMinDepthPiTa : public EmbedderModule {};
  class EmbedderMinDepthMaxFaceLayers : public EmbedderModule {};
  class EmbedderOptimalFlexDraw : public EmbedderModule {};

  class LayoutPlanRepModule {};
  class OrthoLayout : public LayoutPlanRepModule {
  public:
    void separation(double sep);
    void cOverhang(double c);
    void margin(double m);
    void progressive(bool b);
    void scaling(bool b);
    void bendBound(int i);
  };

  class CCLayoutPackModule {};
  class TileToRowsCCPacker : public CCLayoutPackModule {};

  class UPRLayoutModule {
  };
  class LayerBasedUPRLayout : public UPRLayoutModule {
    void setLayout(HierarchyLayoutModule *pLayout);
    void setRanking(RankingModule *pRanking);
  };
}
