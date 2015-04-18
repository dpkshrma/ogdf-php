%{
#include <ogdf/basic/GridLayout.h>
#include <ogdf/cluster/ClusterGraphAttributes.h>
#include <ogdf/internal/steinertree/EdgeWeightedGraph.h>
#include <sstream>
%}

namespace ogdf {
	class GraphAttributes
	{
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
			GraphAttributes(const Graph &G, long initAttributes = nodeGraphics | edgeGraphics); 
	};
	class SVGSettings
	{
		double m_margin;
		int    m_fontSize;
		string m_fontColor;
		string m_fontFamily;
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
	class GraphIO {
		public:
			static SVGSettings svgSettings;
			static bool writeGML(const Graph &G, const char *filename);
			static bool writeGML(const Graph &G, const string &filename);
			static bool writeGML(const Graph &G, ostream &os);
			static bool drawSVG(const GraphAttributes &A, const char *filename, const SVGSettings &settings = svgSettings);
			static bool drawSVG(const GraphAttributes &A, const string &filename, const SVGSettings &settings = svgSettings);
			static bool drawSVG(const GraphAttributes &A, ostream &os, const SVGSettings &settings = svgSettings);
	};
}