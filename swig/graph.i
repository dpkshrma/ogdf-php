%{
#include <ogdf/basic/Graph.h>
#include <ogdf/basic/Graph_d.h>
%}

namespace ogdf {
  class Graph {
  public:
    enum EdgeType {
      association = 0,
      generalization = 1,
      dependency = 2
    };
    enum NodeType {
      vertex,
      dummy,
      generalizationMerger,
      generalizationExpander,
      highDegreeExpander,
      lowDegreeExpander,
      associationClass
    };
    Graph();
    Graph(const Graph &G);
    bool empty();
    int numberOfNodes();
    int numberOfEdges();
    int maxNodeIndex();
    int maxEdgeIndex();
    int maxAdjEntryIndex();
    int nodeArrayTableSize();
    int edgeArrayTableSize();
    int adjEntryArrayTableSize();

    NodeElement *firstNode();
    NodeElement *lastNode();
    EdgeElement *firstEdge();
    EdgeElement *lastEdge();
    NodeElement *chooseNode();
    EdgeElement *chooseEdge();
    void allNodes(ogdf::List<NodeElement*> &nodeListOUT);
    void allEdges(ogdf::List<EdgeElement*> &edgeListOUT);
    void adjEdges(NodeElement *v, ogdf::List<EdgeElement*> &edgeListOUT);
    void adjEntries(NodeElement *v, ogdf::List<AdjElement*> &adjListOUT);
    void inEdges(NodeElement *v, ogdf::List<EdgeElement*> &edgeListOUT);
    void outEdges(NodeElement *v, ogdf::List<EdgeElement*> &edgeListOUT);
    NodeElement *newNode();
    NodeElement *newNode(int index);
    EdgeElement *newEdge(NodeElement *v, NodeElement *w);
    EdgeElement *newEdge(NodeElement *v, NodeElement *w, int index);
    EdgeElement *newEdge(AdjElement *adjSrc, AdjElement *adjTgt, Direction dir = ogdf::after);
    EdgeElement *newEdge(NodeElement *v, AdjElement *adjTgt);
    EdgeElement *newEdge(AdjElement *adjSrc, NodeElement *w);
    virtual void delNode(NodeElement *v);
    virtual void delEdge(EdgeElement *e);
    void clear();
    void hideEdge(EdgeElement *e);
    void restoreEdge(EdgeElement *e);
    void restoreAllEdges();
    virtual EdgeElement *split(EdgeElement *e);
    void unsplit(NodeElement *u);
    virtual void unsplit(EdgeElement *eIn, EdgeElement *eOut);
    NodeElement *splitNode(AdjElement *adjStartLeft, AdjElement *adjStartRight);
    NodeElement *contract(EdgeElement *e);
    void move(EdgeElement *e, AdjElement *adjSrc, Direction dirSrc, AdjElement *adjTgt, Direction dirTgt);
    void moveTarget(EdgeElement *e, NodeElement *w);
    void moveTarget(EdgeElement *e, AdjElement *adjTgt, Direction dir);
    void moveSource(EdgeElement *e, NodeElement *w);
    void moveSource(EdgeElement *e, AdjElement *adjSrc, Direction dir);
    EdgeElement *searchEdge(NodeElement *v, NodeElement *w);
    void reverseEdge(EdgeElement *e);
    void reverseAllEdges();
    void collaps(ogdf::List<NodeElement*> &nodeListIN);
    void sort(NodeElement *v, ogdf::List<AdjElement*> &adjListOUT);
    void reverseAdjEdges(NodeElement *v);
    void moveAdj(AdjElement *adjMove, Direction dir, AdjElement *adjPos);
    void moveAdjAfter(AdjElement *adjMove, AdjElement *adjAfter);
    void moveAdjBefore(AdjElement *adjMove, AdjElement *adjBefore);
    void reverseAdjEdges();
    void swapAdjEdges(AdjElement *adj1, AdjElement *adj2);
    int genus();
    bool representsCombEmbedding();
    bool consistencyCheck();
    void resetEdgeIdCount(int maxId);
    static int nextPower2(int start, int idCount);
  };
}
