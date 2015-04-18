%{
#include <ogdf/basic/GraphAttributes.h>
#include <ogdf/tree/TreeLayout.h>
#include <ogdf/tree/RadialTreeLayout.h>
#include <ogdf/misclayout/CircularLayout.h>
#include <ogdf/misclayout/BalloonLayout.h>
#include <ogdf/planarity/PlanarizationLayout.h>
#include <ogdf/energybased/TutteLayout.h>
#include <ogdf/energybased/GEMLayout.h>
#include <ogdf/energybased/FMMMLayout.h>
#include <ogdf/layered/SugiyamaLayout.h>
#include <ogdf/layered/FastHierarchyLayout.h>
#include <ogdf/layered/FastSimpleHierarchyLayout.h>
#include <ogdf/upward/UpwardPlanarizationLayout.h>
#include <ogdf/upward/DominanceLayout.h>
#include <ogdf/upward/VisibilityLayout.h>
#include <ogdf/energybased/DavidsonHarelLayout.h>
#include <ogdf/module/AcyclicSubgraphModule.h>
#include <ogdf/layered/DfsAcyclicSubgraph.h>
#include <ogdf/layered/GreedyCycleRemoval.h>
#include <string>
%}
%include <std_string.i>
%import "common.i"



namespace ogdf {
class GraphAttributes {
public:
  enum {
    nodeGraphics     = 0x00001,
    edgeGraphics     = 0x00002,
    edgeIntWeight    = 0x00004,
    edgeDoubleWeight = 0x00008,
    edgeLabel        = 0x00010,
    nodeLabel        = 0x00020,
    edgeType         = 0x00040,
    nodeType         = 0x00080,
    nodeId           = 0x00100,
    edgeArrow        = 0x00200,
    edgeStyle        = 0x00400,
    nodeStyle        = 0x00800,
    nodeTemplate     = 0x01000,
    edgeSubGraphs    = 0x02000,
    nodeWeight       = 0x04000,
    threeD           = 0x10000
  };
  GraphAttributes();
  ~GraphAttributes();
  explicit GraphAttributes(const Graph &G, long initAttributes = nodeGraphics | edgeGraphics);
  long attributes();
  virtual void init(const Graph &G, long initAttr);
  void initAttributes(long attr);
  void destroyAttributes(long attr);
  const Graph& constGraph();
  bool directed();
  void setDirected(bool directed);
%refGetSet1(x, NodeElement*, double, x, setX)
%refGetSet1(y, NodeElement*, double, y, setY)
%refGetSet1(z, NodeElement*, double, z, setZ)
%refGetSet1(height, NodeElement*, double, height, setHeight)
%refGetSet1(width, NodeElement*, double, width, setWidth)
%refGetSet1(shape, NodeElement*, Shape, shape, setShape)
  StrokeType strokeType(NodeElement *v);
  void setStrokeType(NodeElement *v, StrokeType st);
%refGetSet1(strokeColor, NodeElement*, Color, strokeColor, setStrokeColor)
%refGetSet1(strokeWidth, NodeElement*, float, strokeWidth, setStrokeWidth)
  FillPattern fillPattern(NodeElement *v);
  void setFillPattern(NodeElement *v, FillPattern fp);
%refGetSet1(fillColor, NodeElement*, Color, fillColor, setFillColor)
%refGetSet1(fillBgColor, NodeElement*, Color, fillBgColor, setFillBgColor)
   %refGetSet1(label, NodeElement*, std::string, label, setLabel)
   %refGetSet1(templateNode, NodeElement*, std::string, templateNode, setTemplateNode)
%refGetSet1(weight, NodeElement*, int, weight, setWeight)
%refGetSet1(type, NodeElement*, Graph::NodeType, _type, setType)
%refGetSet1(idNode, NodeElement*, int, idNode, setIdNode)
%refGetSet1(bends, EdgeElement*, DPolyline, bends, setBends)
%refGetSet1(arrowType, EdgeElement*, EdgeArrow, arrowType, setArrowType)
  StrokeType strokeType(EdgeElement *e);
  void setStrokeType(EdgeElement *e, StrokeType st);
%refGetSet1(strokeColor, EdgeElement*, Color, strokeColor, setStrokeColor)
%refGetSet1(strokeWidth, EdgeElement*, float, strokeWidth, setStrokeWidth)
   %refGetSet1(label, EdgeElement*, std::string, label, setLabel)
%refGetSet1(intWeight, EdgeElement*, int, intWeight, setIntWeight)
%refGetSet1(doubleWeight, EdgeElement*, double, doubleWeight, setDoubleWeight)
%refGetSet1(type, EdgeElement*, Graph::EdgeType, _type, setType)
%refGetSet1(subGraphBits, EdgeElement*, uint32_t, subGraphBits, setSubGraphBits)
  bool inSubGraph(EdgeElement *e, int n);
  void addSubGraph(EdgeElement *e, int n);
  void removeSubGraph(EdgeElement *e, int n);
  virtual DRect boundingBox();
  void setAllWidth(double w);
  void setAllHeight(double h);
  void clearAllBends();
  void removeUnnecessaryBendsHV();
  void addNodeCenter2Bends(int mode = 1);
  bool isAssociationClass(NodeElement *v);
  int hierarchyList(List<List<node>*> &list);
  int hierarchyList(List<List<edge>*> &list);
};

 class LayoutModule;
 class GEMLayout : public LayoutModule {
 public:
   GEMLayout();
   GEMLayout(const GEMLayout &fl);
   virtual void call(GraphAttributes &GA) override;
   int numberOfRounds();
   void numberOfRounds(int n);
   double minimalTemperature();
   void minimalTemperature(double x);
   double initialTemperature();
   void initialTemperature(double x);
   double gravitationalConstant();
   void gravitationalConstant(double x);
   double desiredLength();
   void desiredLength(double x);
   double maximalDisturbance();
   void maximalDisturbance(double x);
   double rotationAngle();
   void rotationAngle(double x);
   double oscillationAngle();
   void oscillationAngle(double x);
   double rotationSensitivity();
   void rotationSensitivity(double x);
   double oscillationSensitivity();
   void oscillationSensitivity(double x);
   int attractionFormula();
   void attractionFormula(int n);
   double minDistCC();
   void minDistCC(double x);
   double pageRatio();
   void pageRatio(double x);
 };
 class FMMMLayout : public LayoutModule {
 public:
   enum PageFormatType {
     pfPortrait,
     pfLandscape,
     pfSquare
   };
   enum QualityVsSpeed {
     qvsGorgeousAndEfficient,
     qvsBeautifulAndFast,
     qvsNiceAndIncredibleSpeed
   };
   enum EdgeLengthMeasurement {
     elmMidpoint,
     elmBoundingCircle
   };
   enum AllowedPositions {
     apAll,
     apInteger,
     apExponent
   };
   enum TipOver {
     toNone,
     toNoGrowingRow,
     toAlways
   };
   enum PreSort {
     psNone,
     psDecreasingHeight,
     psDecreasingWidth
   };
   enum GalaxyChoice {
     gcUniformProb,
     gcNonUniformProbLowerMass,
     gcNonUniformProbHigherMass
   };
   enum MaxIterChange {
     micConstant,
     micLinearlyDecreasing,
     micRapidlyDecreasing
   };
   enum InitialPlacementMult {
     ipmSimple,
     ipmAdvanced
   };
   enum ForceModel {
     fmFruchtermanReingold,
     fmEades,
     fmNew
   };
   enum RepulsiveForcesMethod {
     rfcExact,
     rfcGridApproximation,
     rfcNMM
   };
   enum StopCriterion {
     scFixedIterations,
     scThreshold,
     scFixedIterationsOrThreshold
   };
   enum InitialPlacementForces {
     ipfUniformGrid,
     ipfRandomTime,
     ipfRandomRandIterNr,
     ipfKeepPositions
   };
   enum ReducedTreeConstruction {
     rtcPathByPath,
     rtcSubtreeBySubtree
   };
   enum SmallestCellFinding {
     scfIteratively,
     scfAluru
   };
   FMMMLayout();
   virtual void call(GraphAttributes &GA);
   void call(ClusterGraphAttributes &GA);
   virtual void call(GraphAttributes &GA, GraphConstraints & GC);
   void call(GraphAttributes &GA, const EdgeArray<double> &edgeLength);
   void call(GraphAttributes &AG, char* ps_file);
   void call(GraphAttributes &AG, const EdgeArray<double> &edgeLength, char* ps_file);
   double getCpuTime();
   bool useHighLevelOptions();
   void useHighLevelOptions(bool uho);
   void setSingleLevel(bool b);
   PageFormatType pageFormat();
   void pageFormat(PageFormatType t);
   double unitEdgeLength();
   void unitEdgeLength(double x);
   bool newInitialPlacement();
   void newInitialPlacement(bool nip);
   QualityVsSpeed qualityVersusSpeed();
   void qualityVersusSpeed(QualityVsSpeed qvs);
   void randSeed(int p);
   int randSeed();
   EdgeLengthMeasurement edgeLengthMeasurement();
   void edgeLengthMeasurement(EdgeLengthMeasurement elm);
   AllowedPositions allowedPositions();
   void allowedPositions(AllowedPositions ap);
   int maxIntPosExponent();
   void maxIntPosExponent(int e);
   double pageRatio();
   void pageRatio(double r);
   int stepsForRotatingComponents();
   void stepsForRotatingComponents(int n);
   TipOver tipOverCCs();
   void tipOverCCs(TipOver to);
   double minDistCC();
   void minDistCC(double x);
   PreSort presortCCs();
   void presortCCs(PreSort ps);
   int minGraphSize();
   void minGraphSize(int n);
   GalaxyChoice galaxyChoice();
   void galaxyChoice(GalaxyChoice gc);
   int randomTries();
   void randomTries(int n);
   MaxIterChange maxIterChange();
   void maxIterChange(MaxIterChange mic);
   int maxIterFactor();
   void maxIterFactor(int f);
   InitialPlacementMult initialPlacementMult();
   void initialPlacementMult(InitialPlacementMult ipm);
   ForceModel forceModel();
   void forceModel(ForceModel fm);
   double springStrength();
   void springStrength(double x);
   double repForcesStrength();
   void repForcesStrength(double x);
   RepulsiveForcesMethod repulsiveForcesCalculation();
   void repulsiveForcesCalculation(RepulsiveForcesMethod rfc);
   StopCriterion stopCriterion();
   void stopCriterion(StopCriterion rsc);
   double threshold();
   void threshold(double x);
   int fixedIterations();
   void fixedIterations(int n);
   double forceScalingFactor();
   void forceScalingFactor(double f);
   bool coolTemperature();
   void coolTemperature(bool b);
   double coolValue();
   void coolValue(double x);
   InitialPlacementForces initialPlacementForces();
   void initialPlacementForces(InitialPlacementForces ipf);
   bool resizeDrawing();
   void resizeDrawing(bool b);
   double resizingScalar();
   void resizingScalar(double s);
   int fineTuningIterations();
   void fineTuningIterations(int n);
   double fineTuneScalar();
   void fineTuneScalar(double s);
   bool adjustPostRepStrengthDynamically();
   void adjustPostRepStrengthDynamically(bool b);
   double postSpringStrength();
   void postSpringStrength(double x);
   double postStrengthOfRepForces();
   void postStrengthOfRepForces(double x);
   int  frGridQuotient();
   void frGridQuotient(int p);
   ReducedTreeConstruction nmTreeConstruction();
   void nmTreeConstruction(ReducedTreeConstruction rtc);
   SmallestCellFinding nmSmallCell();
   void nmSmallCell(SmallestCellFinding scf);
   int nmParticlesInLeaves();
   void nmParticlesInLeaves(int n);
   int nmPrecision();
   void nmPrecision(int p);
 };

 class DavidsonHarelLayout : public LayoutModule {
 public:
	enum SettingsParameter {spStandard, spRepulse, spPlanar};
	enum SpeedParameter {sppFast, sppMedium, sppHQ};
	DavidsonHarelLayout();
	virtual void call(GraphAttributes &GA) override;
	void fixSettings(SettingsParameter sp);
	void setSpeed(SpeedParameter sp);
	void setPreferredEdgeLengthMultiplier(double multi);
	void setPreferredEdgeLength(double elen);
	void setRepulsionWeight(double w);
	double getRepulsionWeight();
	void setAttractionWeight(double);
	double getAttractionWeight();
	void setNodeOverlapWeight(double);
	double getNodeOverlapWeight();
	void setPlanarityWeight(double);
	double getPlanarityWeight();
	void setStartTemperature(int t);
	int getStartTemperature();
	void setNumberOfIterations(int steps);
	int getNumberOfIterations();
	void setIterationNumberAsFactor(bool b);
 };
 class TutteLayout : public LayoutModule {
 public:
   TutteLayout();
   DRect bbox () const;
   void bbox (const DRect &bb);
   virtual void call(GraphAttributes &AG) override;
   void call(GraphAttributes &AG, const List<node> &givenNodes);
 };
 class TreeLayout : public LayoutModule {
 public:
   enum RootSelectionType {
     rootIsSource,
     rootIsSink,
     rootByCoord
   };
   TreeLayout();
   ~TreeLayout();
   virtual void call(GraphAttributes &GA);
   void siblingDistance(double x);
   void subtreeDistance(double x);
   void levelDistance(double x);
   void treeDistance(double x);
   void orthogonalLayout(bool b);
   void orientation(Orientation orientation);
   void rootSelection(RootSelectionType rootSelection);
 };
 class RadialTreeLayout : public LayoutModule
 {
 public:
   enum RootSelectionType {
     rootIsSource,
     rootIsSink,
     rootIsCenter
   };
   RadialTreeLayout();
   RadialTreeLayout(const RadialTreeLayout &tl);
   ~RadialTreeLayout();
   virtual void call(GraphAttributes &GA) override;
   void levelDistance(double x);
   void connectedComponentDistance(double x);
   void rootSelection(RootSelectionType sel);
 };
 class CircularLayout : public LayoutModule
 {
 public:
   CircularLayout();
   ~CircularLayout();
   virtual void call(GraphAttributes &GA) override;
   void minDistCircle(double x);
   void minDistLevel(double x);
   void minDistSibling(double x);
   void minDistCC(double x);
   void pageRatio(double x);
 };
 class BalloonLayout : public LayoutModule {
 public:
   BalloonLayout();
   virtual void call(GraphAttributes & AG) override;
   void setEvenAngles(bool b) {m_evenAngles = b;}
 };
 class PlanarizationLayout : public LayoutModule {
 public:
   PlanarizationLayout();
   ~PlanarizationLayout() { }
   void call(GraphAttributes &ga);
   void pageRatio(double ratio);
   void minCliqueSize(int i);
   void setCrossMin(CrossingMinimizationModule *pCrossMin);
   void setEmbedder(EmbedderModule *pEmbedder);
   void setPlanarLayouter(LayoutPlanRepModule *pPlanarLayouter);
   void setPacker(CCLayoutPackModule *pPacker);
 };
 class SugiyamaLayout {
 public:
   SugiyamaLayout();
   ~SugiyamaLayout();
   void call(GraphAttributes &GA);
   void fails(int nFails);
   void runs(int nRuns);
   void transpose(bool bTranspose);
   void arrangeCCs(bool bArrange);
   void minDistCC(double x);
   void pageRatio(double x);
   void alignBaseClasses(bool b);
   void alignSiblings(bool b);
   void permuteFirst(bool b);
   void maxThreads(unsigned int n);
   void setRanking(RankingModule *pRanking);
   void setCrossMin(LayeredCrossMinModule *pCrossMin);
   void setLayout(HierarchyLayoutModule *pLayout);
   void setClusterLayout(HierarchyClusterLayoutModule *pLayout);
   void setPacker(CCLayoutPackModule *pPacker);
 };
 class UpwardPlanarizationLayout : public LayoutModule {
 public:
   virtual void call(GraphAttributes &AG);
 };
 class DominanceLayout : public LayoutModule {
 public:
   void call(GraphAttributes &ga);
   void setMinGridDistance(int dist);
 };
 class VisibilityLayout : public LayoutModule {
 public:
   void call(GraphAttributes &ga);
   void setMinGridDistance(int dist);
 };
}
