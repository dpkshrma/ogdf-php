%{
#include <ogdf/fileformats/GraphIO.h>
%}


class SVGSettings {
public:
  SVGSettings();
  double margin();
  int fontSize();
  const string &fontColor();
  const string &fontFamily();
  void margin(double m);
  void fontSize(int fs);
  void fontColor(const string &fc);
  void fontFamily(const string &fm);
};

%{
typedef ogdf::GraphIO::SVGSettings SVGSettings;
%}

namespace ogdf {
class GraphIO {
public:
  static bool readGML(Graph &G, const char *filename);
  static bool readGML(Graph &G, const string &filename);
  static bool readGML(Graph &G, istream &is);
  static bool writeGML(const Graph &G, const char *filename);
  static bool writeGML(const Graph &G, const string &filename);
  static bool writeGML(const Graph &G, ostream &os);
  static bool readOGML(Graph &G, const char *filename);
  static bool readOGML(Graph &G, const string &filename);
  static bool readOGML(Graph &G, istream &is);
  static bool writeOGML(const Graph &G, const char *filename);
  static bool writeOGML(const Graph &G, const string &filename);
  static bool writeOGML(const Graph &G, ostream &os);
  static bool readRome(Graph &G, const char *filename);
  static bool readRome(Graph &G, const string &filename);
  static bool readRome(Graph &G, istream &is);
  static bool writeRome(const Graph &G, const char *filename);
  static bool writeRome(const Graph &G, const string &filename);
  static bool writeRome(const Graph &G, ostream &os);
  static bool readLEDA(Graph &G, const char *filename);
  static bool readLEDA(Graph &G, const string &filename);
  static bool readLEDA(Graph &G, istream &is);
  static bool writeLEDA(const Graph &G, const char *filename);
  static bool writeLEDA(const Graph &G, const string &filename);
  static bool writeLEDA(const Graph &G, ostream &os);
  static bool readChaco(Graph &G, const char *filename);
  static bool readChaco(Graph &G, const string &filename);
  static bool readChaco(Graph &G, istream &is);
  static bool writeChaco(const Graph &G, const char *filename);
  static bool writeChaco(const Graph &G, const string &filename);
  static bool writeChaco(const Graph &G, ostream &os);
  static bool readPMDissGraph(Graph &G, const char *filename);
  static bool readPMDissGraph(Graph &G, const string &filename);
  static bool readPMDissGraph(Graph &G, istream &is);
  static bool writePMDissGraph(const Graph &G, const char *filename);
  static bool writePMDissGraph(const Graph &G, const string &filename);
  static bool writePMDissGraph(const Graph &G, ostream &os);
  static bool readYGraph(Graph &G, const char *filename);
  static bool readYGraph(Graph &G, const string &filename);
  static bool readYGraph(Graph &G, istream &is);
  static bool readGML(ClusterGraph &C, Graph &G, const char *filename);
  static bool readGML(ClusterGraph &C, Graph &G, const string &filename);
  static bool readGML(ClusterGraph &C, Graph &G, istream &is);
  static bool writeGML(const ClusterGraph &C, const char *filename);
  static bool writeGML(const ClusterGraph &C, const string &filename);
  static bool writeGML(const ClusterGraph &C, ostream &os);
  static bool readOGML(ClusterGraph &C, Graph &G, const char *filename);
  static bool readOGML(ClusterGraph &C, Graph &G, const string &filename);
  static bool readOGML(ClusterGraph &C, Graph &G, istream &is);
  static bool writeOGML(const ClusterGraph &C, const char *filename);
  static bool writeOGML(const ClusterGraph &C, const string &filename);
  static bool writeOGML(const ClusterGraph &C, ostream &os);
  static bool readGML(GraphAttributes &A, Graph &G, const char *filename);
  static bool readGML(GraphAttributes &A, Graph &G, const string &filename);
  static bool readGML(GraphAttributes &A, Graph &G, istream &is);
  static bool writeGML(const GraphAttributes &A, const char *filename);
  static bool writeGML(const GraphAttributes &A, const string &filename);
  static bool writeGML(const GraphAttributes &A, ostream &os);
  static bool readOGML(GraphAttributes &A, Graph &G, const char *filename);
  static bool readOGML(GraphAttributes &A, Graph &G, const string &filename);
  static bool readOGML(GraphAttributes &A, Graph &G, istream &is);
  static bool writeOGML(const GraphAttributes &A, const char *filename);
  static bool writeOGML(const GraphAttributes &A, const string &filename);
  static bool writeOGML(const GraphAttributes &A, ostream &os);
  static bool readRudy(GraphAttributes &A, Graph &G, const char *filename);
  static bool readRudy(GraphAttributes &A, Graph &G, const string &filename);
  static bool readRudy(GraphAttributes &A, Graph &G, istream &is);
  static bool writeRudy(const GraphAttributes &A, const char *filename);
  static bool writeRudy(const GraphAttributes &A, const string &filename);
  static bool writeRudy(const GraphAttributes &A, ostream &os);
  static bool readGML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readGML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const string &filename);
  static bool writeGML(const ClusterGraphAttributes &A, const char *filename);
  static bool writeGML(const ClusterGraphAttributes &A, const string &filename);
  static bool writeGML(const ClusterGraphAttributes &A, ostream &os);
  static bool readOGML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readOGML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, istream &is);
  static bool writeOGML(const ClusterGraphAttributes &A, const char *filename);
  static bool writeOGML(const ClusterGraphAttributes &A, const string &filename);
  static bool writeOGML(const ClusterGraphAttributes &A, ostream &os);
  static bool readBENCH(Graph &G, List<node>& hypernodes, List<edge> *shell, const char *filename);
  static bool readBENCH(Graph &G, List<node>& hypernodes, List<edge> *shell, istream &is);
  static bool readPLA(Graph &G, List<node>& hypernodes, List<edge>* shell, const char *filename);
  static bool readPLA(Graph &G, List<node>& hypernodes, List<edge>* shell, const string &filename);
  static bool readChallengeGraph(Graph &G, GridLayout &gl, const char *filename);
  static bool readChallengeGraph(Graph &G, GridLayout &gl, const string &filename);
  static bool readChallengeGraph(Graph &G, GridLayout &gl, istream &is);
  static bool writeChallengeGraph(const Graph &G, const GridLayout &gl, const char *filename);
  static bool writeChallengeGraph(const Graph &G, const GridLayout &gl, const string &filename);
  static bool writeChallengeGraph(const Graph &G, const GridLayout &gl, ostream &os);
  static bool readGraphML(Graph &G, const char *filename);
  static bool readGraphML(Graph &G, const string &filename);
  static bool readGraphML(Graph &G, istream &is);
  static bool readGraphML(ClusterGraph &C, Graph &G, const char *filename);
  static bool readGraphML(ClusterGraph &C, Graph &G, const string &filename);
  static bool readGraphML(ClusterGraph &C, Graph &G, istream &is);
  static bool readGraphML(GraphAttributes &A, Graph &G, const char *filename);
  static bool readGraphML(GraphAttributes &A, Graph &G, const string &filename);
  static bool readGraphML(GraphAttributes &A, Graph &G, istream &is);
  static bool readGraphML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readGraphML(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, istream &is);
  static bool writeGraphML(const Graph &G, const char *filename);
  static bool writeGraphML(const Graph &G, const string &filename);
  static bool writeGraphML(const Graph &G, ostream &os);
  static bool writeGraphML(const ClusterGraph &C, const char *filename);
  static bool writeGraphML(const ClusterGraph &C, const string &filename);
  static bool writeGraphML(const ClusterGraph &C, ostream &os);
  static bool writeGraphML(const GraphAttributes &A, const char *filename);
  static bool writeGraphML(const GraphAttributes &A, const string &filename);
  static bool writeGraphML(const GraphAttributes &A, ostream &os);
  static bool writeGraphML(const ClusterGraphAttributes &A, const char *filename);
  static bool writeGraphML(const ClusterGraphAttributes &A, const string &filename);
  static bool writeGraphML(const ClusterGraphAttributes &A, ostream &os);
  static bool readDOT(Graph &G, const char *filename);
  static bool readDOT(Graph &G, const string &filename);
  static bool readDOT(Graph &G, istream &is);
  static bool readDOT(ClusterGraph &C, Graph &G, const char *filename);
  static bool readDOT(ClusterGraph &C, Graph &G, const string &filename);
  static bool readDOT(ClusterGraph &C, Graph &G, istream &is);
  static bool readDOT(GraphAttributes &A, Graph &G, const char *filename);
  static bool readDOT(GraphAttributes &A, Graph &G, const string &filename);
  static bool readDOT(GraphAttributes &A, Graph &G, istream &is);
  static bool readDOT(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readDOT(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const string &filename);
  static bool writeDOT(const Graph &G, const char *filename);
  static bool writeDOT(const Graph &G, const string &filename);
  static bool writeDOT(const Graph &G, ostream &os);
  static bool writeDOT(const ClusterGraph &C, const char *filename);
  static bool writeDOT(const ClusterGraph &C, const string &filename);
  static bool writeDOT(const ClusterGraph &C, ostream &os);
  static bool writeDOT(const GraphAttributes &A, const char *filename);
  static bool writeDOT(const GraphAttributes &A, const string &filename);
  static bool writeDOT(const GraphAttributes &A, ostream &os);
  static bool writeDOT(const ClusterGraphAttributes &A, const char *filename);
  static bool writeDOT(const ClusterGraphAttributes &A, const string &filename);
  static bool writeDOT(const ClusterGraphAttributes &A, ostream &os);
  static bool readGEXF(Graph &G, const char *filename);
  static bool readGEXF(Graph &G, const string &filename);
  static bool readGEXF(Graph &G, istream &is);
  static bool readGEXF(ClusterGraph &C, Graph &G, const char *filename);
  static bool readGEXF(ClusterGraph &C, Graph &G, const string &filename);
  static bool readGEXF(ClusterGraph &C, Graph &G, istream &is);
  static bool readGEXF(GraphAttributes &A, Graph &G, const char *filename);
  static bool readGEXF(GraphAttributes &A, Graph &G, const string &filename);
  static bool readGEXF(GraphAttributes &A, Graph &G, istream &is);
  static bool readGEXF(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readGEXF(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, istream &is);
  static bool writeGEXF(const Graph &G, const char *filename);
  static bool writeGEXF(const Graph &G, const string &filename);
  static bool writeGEXF(const Graph &G, ostream &os);
  static bool writeGEXF(const ClusterGraph &C, const char *filename);
  static bool writeGEXF(const ClusterGraph &C, const string &filename);
  static bool writeGEXF(const ClusterGraph &C, ostream &os);
  static bool writeGEXF(const GraphAttributes &A, const char *filename);
  static bool writeGEXF(const GraphAttributes &A, const string &filename);
  static bool writeGEXF(const GraphAttributes &A, ostream &os);
  static bool writeGEXF(const ClusterGraphAttributes &A, const char *filename);
  static bool writeGEXF(const ClusterGraphAttributes &A, const string &filename);
  static bool writeGEXF(const ClusterGraphAttributes &A, ostream &os);
  static bool readGDF(Graph &G, const char *filename);
  static bool readGDF(Graph &G, const string &filename);
  static bool readGDF(Graph &G, istream &is);
  static bool readGDF(GraphAttributes &A, Graph &G, const char *filename);
  static bool readGDF(GraphAttributes &A, Graph &G, const string &filename);
  static bool readGDF(GraphAttributes &A, Graph &G, istream &is);
  static bool writeGDF(const Graph &G, const char *filename);
  static bool writeGDF(const Graph &G, const string &filename);
  static bool writeGDF(const Graph &G, ostream &os);
  static bool writeGDF(const GraphAttributes &A, const char *filename);
  static bool writeGDF(const GraphAttributes &A, const string &filename);
  static bool writeGDF(const GraphAttributes &A, ostream &os);
  static bool readTLP(Graph &G, const char *filename);
  static bool readTLP(Graph &G, const string &filename);
  static bool readTLP(Graph &G, istream &is);
  static bool readTLP(ClusterGraph &C, Graph &G, const char *filename);
  static bool readTLP(ClusterGraph &C, Graph &G, const string &filename);
  static bool readTLP(ClusterGraph &C, Graph &G, istream &is);
  static bool readTLP(GraphAttributes &A, Graph &G, const char *filename);
  static bool readTLP(GraphAttributes &A, Graph &G, const string &filename);
  static bool readTLP(GraphAttributes &A, Graph &G, istream &is);
  static bool readTLP(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const char *filename);
  static bool readTLP(ClusterGraphAttributes &A, ClusterGraph &C, Graph &G, const string &filename);
  static bool writeTLP(const Graph &G, const char *filename);
  static bool writeTLP(const Graph &G, const string &filename);
  static bool writeTLP(const Graph &G, ostream &os);
  static bool writeTLP(const ClusterGraph &C, const char *filename);
  static bool writeTLP(const ClusterGraph &C, const string &filename);
  static bool writeTLP(const ClusterGraph &C, ostream &os);
  static bool writeTLP(const GraphAttributes &A, const char *filename);
  static bool writeTLP(const GraphAttributes &A, const string &filename);
  static bool writeTLP(const GraphAttributes &A, ostream &os);
  static bool writeTLP(const ClusterGraphAttributes &A, const char *filename);
  static bool writeTLP(const ClusterGraphAttributes &A, const string &filename);
  static bool writeTLP(const ClusterGraphAttributes &A, ostream &os);
  static bool readDL(Graph &G, const char *filename);
  static bool readDL(Graph &G, const string &filename);
  static bool readDL(Graph &G, istream &is);
  static bool readDL(GraphAttributes &A, Graph &G, const char *filename);
  static bool readDL(GraphAttributes &A, Graph &G, const string &filename);
  static bool readDL(GraphAttributes &A, Graph &G, istream &is);
  static bool writeDL(const Graph &G, const char *filename);
  static bool writeDL(const Graph &G, const string &filename);
  static bool writeDL(const Graph &G, ostream &os);
  static bool writeDL(const GraphAttributes &A, const char *filename);
  static bool writeDL(const GraphAttributes &A, const string &filename);
  static bool writeDL(const GraphAttributes &A, ostream &os);
  static bool readSTP(
    EdgeWeightedGraph<double> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    const char           *filename);
  static bool readSTP(
    EdgeWeightedGraph<int> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    const char           *filename);
  static bool readSTP(
    EdgeWeightedGraph<double> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    const string         &filename);
  static bool readSTP(
    EdgeWeightedGraph<int> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    const string         &filename);
  static bool readSTP(
    EdgeWeightedGraph<double> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    istream              &is);
  static bool readSTP(
    EdgeWeightedGraph<int> &wG,
    List<node>           &terminals,
    NodeArray<bool>      &isTerminal,
    istream              &is);
  static bool readEdgeListSubgraph(Graph &G, List<edge> &delEdges, const char *filename);
  static bool readEdgeListSubgraph(Graph &G, List<edge> &delEdges, const string &filename);
  static bool readEdgeListSubgraph(Graph &G, List<edge> &delEdges, istream &is);
  static bool writeEdgeListSubgraph(const Graph &G, const List<edge> &delEdges, const char *filename);
  static bool writeEdgeListSubgraph(const Graph &G, const List<edge> &delEdges, ostream &os);
  static bool drawSVG(const GraphAttributes &A, const char *filename, const SVGSettings &settings);
  static bool drawSVG(const ClusterGraphAttributes &A, const char *filename, const SVGSettings &settings);
  static char indentChar();
  static int indentWidth();
  static void setIndentChar(char c);
  static void setIndentWidth(int w);
  static ostream &indent(ostream &os, int depth);
};
}
