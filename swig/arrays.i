%{
#include <ogdf/basic/NodeArray.h>
#include <ogdf/basic/EdgeArray.h>
#include <ogdf/basic/AdjEntryArray.h>
%}

namespace ogdf {
  template<class T> class NodeArray {
  public:
    NodeArray();
    NodeArray(const Graph &G);
    NodeArray(const Graph &G, const T &x);
    NodeArray(const NodeArray<T> &A);
    bool valid();
    const Graph *graphOf();
    void init();
    void init(const Graph &G);
    void init(const Graph &G, const T &x);
    void fill(const T &x);
    %extend {
      T get_val(ogdf::NodeElement *n) {
	return (*$self)[n];
      }
      void set_val(ogdf::NodeElement *n, const T &d) {
	(*$self)[n] = d;
      }
    }
  };

  template<class T> class EdgeArray {
  public:
    EdgeArray();
    EdgeArray(const Graph &G);
    EdgeArray(const Graph &G, const T &x);
    bool valid();
    const Graph *graphOf();
    void init();
    void init(const Graph &G);
    void init(const Graph &G, const T &x);
    void fill(const T &x);
    %extend {
      T get_val(ogdf::EdgeElement *n) {
	return (*$self)[n];
      }
      void set_val(ogdf::EdgeElement *n, const T &d) {
	(*$self)[n] = d;
      }
    }
  };

  template<class T> class AdjEntryArray {
  public:
    AdjEntryArray();
    AdjEntryArray(const Graph &G);
    AdjEntryArray(const Graph &G, const T &x);
    bool valid();
    const Graph *graphOf();
    void init();
    void init(const Graph &G);
    void init(const Graph &G, const T &x);
    void fill(const T &x);
    %extend {
      T get_val(ogdf::AdjElement *n) {
	return (*$self)[n];
      }
      void set_val(ogdf::AdjElement *n, const T &d) {
	(*$self)[n] = d;
      }
    }
  };
}

%template(IntNodeArray) ogdf::NodeArray<int>;
%template(LongNodeArray) ogdf::NodeArray<long>;
%template(FloatNodeArray) ogdf::NodeArray<float>;
%template(DoubleNodeArray) ogdf::NodeArray<double>;

%template(IntEdgeArray) ogdf::EdgeArray<int>;
%template(LongEdgeArray) ogdf::EdgeArray<long>;
%template(FloatEdgeArray) ogdf::EdgeArray<float>;
%template(DoubleEdgeArray) ogdf::EdgeArray<double>;