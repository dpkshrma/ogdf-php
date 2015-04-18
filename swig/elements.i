%{
#include <ogdf/basic/Graph.h>
#include <ogdf/basic/Graph_d.h>
%}

namespace ogdf {
  class AdjElement;
  class NodeElement;
  class EdgeElement;

  class AdjElement {
    AdjElement();
  public:
    EdgeElement *theEdge();
    NodeElement *theNode();
    AdjElement *twin();
    NodeElement *twinNode();
    int index();
    AdjElement *clockwiseFaceSucc();
    AdjElement *clockwiseFacePred();
    AdjElement *counterClockwiseFaceSucc();
    AdjElement *counterClockwiseFacePred();
    AdjElement *faceCycleSucc();
    AdjElement *faceCyclePred();
    AdjElement *succ();
    AdjElement *pred();
    AdjElement *cyclicSucc();
    AdjElement *cyclicPred();
    static int compare(const AdjElement& x,const AdjElement& y);
  };

  class NodeElement {
    NodeElement();
  public:
    int index();
    int indeg();
    int outdeg();
    int degree();
    AdjElement *firstAdj();
    AdjElement *lastAdj ();
    NodeElement *succ();
    NodeElement *pred();
    static int compare(const NodeElement& x,const NodeElement& y);
  };

  class EdgeElement {
    EdgeElement();
  public:
    int index();
    NodeElement *source();
    NodeElement *target();
    AdjElement *adjSource();
    AdjElement *adjTarget();
    NodeElement *opposite(NodeElement *v);
    bool isSelfLoop();
    EdgeElement *succ();
    EdgeElement *pred();
    bool isIncident(NodeElement *v);
    NodeElement *commonNode(EdgeElement *e);
    static int compare(const EdgeElement& x,const EdgeElement& y);
  };
}
