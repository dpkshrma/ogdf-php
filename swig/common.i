%define %refGetSet(name, refType, getter, setter)
%extend {
  refType getter() {
    return $self->name();
  }
  void setter(refType val) {
    $self->name() = val;
  }
}
%enddef

%define %refGetSet1(name, argType, refType, getter, setter)
%extend {
  refType getter(argType v) {
    return $self->name(v);
  }
  void setter(argType v, refType val) {
    $self->name(v) = val;
  }
}
%enddef
