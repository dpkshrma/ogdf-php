%{
#include <ogdf/basic/graphics.h>
using namespace ogdf;
%}

namespace ogdf {
	enum StrokeType {
		stNone,			
		stSolid,		
		stDash,			
		stDot,			
		stDashdot,		
		stDashdotdot	
	};
	StrokeType intToStrokeType(int i);
	enum StrokeLineCap {
		slcButt,
		slcRound,
		slcSquare
	};
	enum StrokeLineJoin {
		sljMiter,
		sljRound,
		sljBevel
	};
	enum FillPattern {
		fpNone,
		fpSolid,
		fpDense1,
		fpDense2,
		fpDense3,
		fpDense4,
		fpDense5,
		fpDense6,
		fpDense7,
		fpHorizontal,
		fpVertical,
		fpCross,
		fpBackwardDiagonal,
		fpForwardDiagonal,
		fpDiagonalCross
	};
	FillPattern intToFillPattern(int i);
	enum Shape {
		shRect,               
		shRoundedRect,        
		shEllipse,            
		shTriangle,           
		shPentagon,           
		shHexagon,            
		shOctagon,            
		shRhomb,              
		shTrapeze,            
		shParallelogram,      
		shInvTriangle,        
		shInvTrapeze,         
		shInvParallelogram,   
		shImage
	};
	enum EdgeArrow {
		eaNone,		
		eaLast,		
		eaFirst,	
		eaBoth,		
		eaUndefined
	};
	class Color {
	public:
		Color();
		Color(uint8_t r, uint8_t g, uint8_t b, uint8_t a = 255);
		Color(int r, int g, int b, int a = 255);
		Color(const std::string &str);
		~Color();

		uint8_t red();
		uint8_t green();
		uint8_t blue();
		uint8_t alpha();

		void red(uint8_t r);
		void green(uint8_t g);
		void blue(uint8_t b);
		void alpha(uint8_t a);

		std::string toString();
		bool fromString(const std::string &str);

		%rename(__equalsequals__) operator==;
		%rename(__notequals__) operator==;
		bool operator==(const Color &c);
		bool operator!=(const Color &c);
	};

	struct Stroke {
	  Color          m_color;    
	  float          m_width;    
	  StrokeType     m_type : 8; 
	  StrokeLineCap  m_cap  : 8; 
	  StrokeLineJoin m_join : 8; 

	  Stroke();
	  Stroke(Color c);
	  ~Stroke();
	};

	struct Fill {
		Color       m_color;
		Color       m_bgColor; 
		FillPattern m_pattern; 

	  Fill();
	  Fill(Color c);
	  Fill(Color c, FillPattern pattern);
	  Fill(Color c, Color bgColor, FillPattern pattern);
	};

}
