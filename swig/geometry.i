%{
#include <ogdf/basic/geometry.h>
%}
namespace ogdf {
  enum Orientation {
    topToBottom,
    bottomToTop,
    leftToRight,
    rightToLeft
  };

  template <class NUMBER> class GenericPoint {
  public:
    typedef NUMBER numberType;

    NUMBER m_x;
    NUMBER m_y;
    GenericPoint();
    GenericPoint(NUMBER x, NUMBER y);
    GenericPoint(const GenericPoint &p);
    bool operator==(const GenericPoint &p);
    bool operator!=(const GenericPoint &p);
    bool operator<(const GenericPoint &p);
    bool operator>(const GenericPoint &p);
  };

  %template(IntGenericPoint) GenericPoint<int>;
  %template(DoubleGenericPoint) GenericPoint<double>;

  class IPoint : public GenericPoint<int> {
  public:
    IPoint();
    IPoint(int x, int y);
    IPoint(const IPoint &ip);
    double distance(const IPoint &p);
  };

ogdfListTemplate(IPoint, IPointList)

  class IPolyline : public List<IPoint> {
  public:
    IPolyline();
    IPolyline(const IPolyline &ipl);
    double length();
  };

  class DPoint : public GenericPoint<double> {
  public:
    DPoint();
    DPoint(double x, double y);
    DPoint(const DPoint &dp);
    bool operator==(const DPoint &dp);
    double norm();
    DPoint operator+(const DPoint &p);
    DPoint operator-(const DPoint &p);
    double distance(const DPoint &p);
  };

  class DVector : public DPoint {
  public:
    DVector();
    DVector(double x, double y);
    DVector(const DVector &dv);
    DVector(const DPoint &dv);
    DVector operator+(const DVector &dv);
    DVector operator-(const DVector &dv);
    DVector operator*(const double val);
    DVector operator/(const double val);
    double length();
    double operator^(const DVector &dv);
    double operator*(const DVector &dv);
    DVector orthogonal() const;
  };

ogdfListTemplate(DPoint, DPointList)

  class DPolyline : public List<DPoint> {
  public:
    DPolyline();
    DPolyline(const DPolyline &dpl);
    double length();
    DPoint position(const double fraction, double len = -1.0);
    void unify();
    void normalize();
    void normalize(DPoint src, DPoint tgt);
    void convertToInt();
  };

  class DLine {
  public:
    DLine();
    DLine(const DPoint &p1, const DPoint &p2);
    DLine(const DLine &dl);
    DLine(double x1, double y1, double x2, double y2);
    bool operator==(const DLine &dl);
    bool operator!=(const DLine &dl);
    DPoint start();
    DPoint end();
    double dx();
    double dy();
    double slope();
    double yAbs();
    bool isVertical();
    bool isHorizontal();
    bool intersection(const DLine &line, DPoint &inter, bool endpoints = true);
    bool intersectionOfLines(const DLine &line, DPoint &inter);
    bool contains(const DPoint &p);
    double length();
    int horIntersection(const double horAxis, double &crossing);
    int verIntersection(const double verAxis, double &crossing);
  };

  class DRect {
  public:
    DRect();
    DRect(const DPoint &p1, const DPoint &p2);
    DRect(double x1, double y1, double x2, double y2);
    DRect(const DLine &dl);
    DRect(const DRect &dr);
    bool operator==(const DRect &dr);
    bool operator!=(const DRect &dr);
    double width();
    double height();
    void normalize();
    DPoint p1();
    DPoint p2();
    const DLine topLine();
    const DLine rightLine();
    const DLine leftLine();
    const DLine bottomLine();
    void yInvert();
    void xInvert();
    bool contains(const DPoint &p);
  };

  class DSegment : public DLine {
  public:
    DSegment();
    DSegment(const DPoint &p1, const DPoint &p2);
    DSegment(const DLine &dl);
    DSegment(double x1, double y1, double x2, double y2);
    DSegment(const DSegment &ds);
    double det(const DSegment &segment);
  };

  class DPolygon : public DPolyline {
  public:
    DPolygon(bool cc = true);
    DPolygon(const DRect &rect, bool cc = true);
    DPolygon(const DPolygon  &dop);
    bool counterclock();
    DSegment segment(ListConstIterator<DPoint> it);
    ListIterator<DPoint> insertPoint(const DPoint &p);
    ListIterator<DPoint> insertPoint(const DPoint &p,
				     ListIterator<DPoint> p1,
				     ListIterator<DPoint> p2);
    void insertCrossPoint(const DPoint &p);
    int getCrossPoints(const DPolygon &p, List<DPoint> &crossPoints);
    void unify();
    void normalize();
    bool containsPoint(DPoint &p);
  };

  int orientation(const DPoint &p, const DPoint &q, const DPoint &r);
  inline int orientation(const DSegment &s, const DPoint &p);
}
