#lang sicp
;顺序计算表达式
;语法：(begin exp1 exp2 ...)
;顺序执行表达式 exp1, exp2, ...，返回最后一个表达式的结果

(define x 3)
(begin
  (set! x (+ x 1))
  (+ x x))              ;先用set！将x变成4，再运算x+x，return 8