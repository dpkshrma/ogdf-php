%include "stdint.i"
%include "std_string.i"

%{
#include <ogdf/basic/List.h>
%}

namespace ogdf {
  enum Direction { before, after};

  template<class E> class ListIterator {
  public:
    bool valid();
    %rename(ListIteratorNotEquals) operator!=;
    %rename(ListIteratorEqualsEquals) operator==;
    bool operator==(const ListIterator<E> &it);
    bool operator!=(const ListIterator<E> &it);
    ListIterator<E> succ();
    ListIterator<E> pred();
    %extend {
      E get_val() {
	return **$self;
      }
      void set_val(E val) {
	(**$self) = val;
      }
      void inc() {
	(*$self)++;
      }
      void dec() {
	(*$self)--;
      }
      bool eq(const ListIterator<E> &it) {
	return (*$self) == it;
      }
    }
  };

  template<class E> class List {
  public:
    List();
    List(const List<E> &l);
    bool empty();
    int size();
    E front();
    E back();
    ListIterator<E> get(int pos);
    int pos(ListIterator<E> it);
    ListIterator<E> begin();
    ListIterator<E> end();
    ListIterator<E> rbegin();
    ListIterator<E> rend();
    ListIterator<E> cyclicPred(ListIterator<E> it);
    ListIterator<E> cyclicSucc(ListIterator<E> it);
    %rename(ListNotEquals) operator!=;
    %rename(ListEqualsEquals) operator==;
    bool operator==(const List<E> &L);
    bool operator!=(const List<E> &L);
    ListIterator<E> pushFront(const E &x);
    ListIterator<E> pushBack(const E &x);
    ListIterator<E> insert(const E&x, ListIterator<E> it, Direction dir = after);
    ListIterator<E> insertBefore(const E&x, ListIterator<E> it);
    ListIterator<E> insertAfter(const E&x, ListIterator<E> it);
    void popFront();
    E popFrontRet();
    void popBack();
    E popBackRet();
    %rename(_del) del;
    void del(ListIterator<E> it);
    bool removeFirst(const E &x);
    void clear();
    void exchange(ListIterator<E> it1, ListIterator<E> it2);
    void moveToFront(ListIterator<E> it);
    void moveToBack(ListIterator<E> it);
    void moveToSucc(ListIterator<E> it, ListIterator<E> itBefore);
    void moveToPrec(ListIterator<E> it, ListIterator<E> itBefore);
    void moveToFront(ListIterator<E> it, List<E> &L2);
    void moveToBack(ListIterator<E> it, List<E> &L2);
    void moveToSucc(ListIterator<E> it, List<E> &L2, ListIterator<E> itBefore);
    void moveToPrec(ListIterator<E> it, List<E> &L2, ListIterator<E> itBefore);
    void conc(List<E> &L2);
    void concFront(List<E> &L2);
    void reverse();
    void quicksort();
    void permute();
    ListIterator<E> search(const E &e);
    ListIterator<E> chooseIterator();
    E chooseElement();
  };
}

%define ogdfListTemplate(type, name)
  %rename(_del) del;
  %template(name##Iterator) ogdf::ListIterator<type>;
  %template(name) ogdf::List<type>;
%enddef

%template(IntListIterator) ogdf::ListIterator<int>;
%template(IntList) ogdf::List<int>;