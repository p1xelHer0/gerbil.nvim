;;; -*- Gerbil -*-
(import :std/foreign)

(export #t)

(vector-ref-set! a)
(def a)

(begin-ffi ((struct cartesian_coord x y)
            (struct polar_coord r a)
            (struct q_and_a q a)
            point-to-polar
            print-q-and-a)

  (c-declare #<<c-declare-end

#include <stdio.h>
#include <math.h>

#define PI 3.141592654

// A typedef struct representing a cartesian coordinate.
typedef struct cartesian_coord {
  double x;
  double y;
} point;

// A typedef struct representing a polar coordinate.
typedef struct polar_coord {
  double r;
  double a;
} polar;

// A typedef anonymous struct representing
// a formatted question and answer.
typedef struct {
  char* q;
  char* a;
} q_and_a;

// A function to convert a cartesian coordinate to
// a polar coordinate.
polar *point_to_polar(point *pnt) {
  polar *plr = (polar *) malloc(sizeof(polar));
  plr->r = hypot(pnt->x, pnt->y);
  plr->a = 0.0;
  if(pnt->x == 0.0) {
    if(pnt->y > 0.0) plr->a =  PI / 2.0;
    if(pnt->y < 0.0) plr->a = -PI / 2.0;
  } else {
    plr->a = atan2(pnt->y, pnt->x);
  }
  return plr;
}

// A function to print out the question and answer
// to a cartesian to polar coordinate conversion.
void print_q_and_a(q_and_a *qa, struct cartesian_coord *pnt, struct polar_coord *plr) {
  printf(qa->q, pnt->x, pnt->y);
  printf(qa->a, plr->r, plr->a);
}

c-declare-end)

  ; Foreign-object type declarations for `point` and `polar`.
  ; Notice the addition of `cartesian_coord*` as a non-primary tag for
  ; `point*`. This tells Scheme that a foreign-object tagged `cartesian_coord*`
  ; is acceptable (and type compatible) where one of `point*` is expected. It
  ; is what allows for `cc-ref` to be passed as an argument to `point-to-polar`
  ; in the interactive session below.
  (c-define-type point  (type "point" (point cartesian_coord)))
  (c-define-type point* (pointer point (point* cartesian_coord*)))
  (c-define-type polar  (type "polar" (polar polar_coord)))
  (c-define-type polar* (pointer polar (polar* polar_coord*)))

  (define-c-struct cartesian_coord
    ((x . double) (y . double))
    #f (point))  ; Likewise, `point` is specified as a compatible type where a
                 ; foreign-object tagged `cartesian_coord` is expected. Such is
                 ; the case with the generated accessors for this struct type.

  (define-c-struct polar_coord
    ((r . double) (a . double))
    #f (polar))  ; `polar` is specified as a compatible type of `polar_coord`.
                 ; Similarly, it is what allows the generated accessors to
                 ; opperate on foreign-objects tagged `polar`, and for `polar-ref`
                 ; to be passed as an argument to `print_q_and_a`, as shown in
                 ; the interactive session below.

  (define-c-struct q_and_a  ; `q_and_a` matches the typedef alias. *!*
    ((q . char-string) (a . char-string))
    #f #f #t)    ; Set `as-typedef` as #t for anonymous struct.

  ; Interface with the C functions.
  (define-c-lambda point-to-polar (point*) polar* "point_to_polar")
  (define-c-lambda print-q-and-a  (q_and_a* cartesian_coord* polar_coord*) void "print_q_and_a"))
