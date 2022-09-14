#lang sicp
;关系运算符
(< -1 0)      ;#t
(> -1 0)      ;#f
(eqv? 'a 'a)  ;#t


;逻辑运算
(not #t)       ;#f
(not #f)       ;#t

(not 1)        ;#f
(not 2)        ;#f
(not '(a b c)) ;#f

(or)           ;#f
(or #f)        ;#f
(or #f #t)     ;#t
(or #f 'a #f)  ;a

(and)          ;#t
(and #f)       ;#f
(and #f #t)    ;#f
(and #f 'a #f) ;#f
(and 'a #t 'b) ;'b


;if表达式
;语法：(if test consequent alternative)
;如果test表达式为真，返回 consequent，否则返回 alternative
(define (abs n)
  (if (< n 0)
      (- n)
      n))


;cond表达式
;语法：(cond (test exp) ... (else exp))
(define (abs1 x)               ;条件表达式的一般形式：
  (cond ((> x 0) x)           ;(cond((条件1) 值1)
        ((= x 0) 0)           ;     ((条件2) 值2)
        ((< x 0) (- x))))     ;     (....))

(define (abs2 x)              ;条件表达式的另一种形式
  (cond ((< x 0) (- x))
        (else x)))

;case表达式
;语法：(case exp0 clause1 clause2 ... )
;clause 的语法结构为：((key1 ...) exp1 ...) 最后一个表达式的结构可以为：(else exp1 exp2 ...)
;类似于c语言的switch case语句
(let ((x 4) (y 5))
  (case (+ x y)
    ((eqv? 0 (% (+ x y) 2)) 'even)
    (else 'odd)))