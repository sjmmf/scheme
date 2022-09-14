#lang sicp
;循环

;do表达式
;语法：(do ((var1 val1 update1) ...) (test res ...) exp ...)
;先将val1赋值给var1，...，之后循环开始，在每次循环的开始，先执行表达式 test，如果返回布尔值真，则循环终止，并返回结果 res，
;如果表达式 test返回布尔值#f，则运行表达式 exp...，之后依次用 update1 ... 的值来为变量 var1 ... 重新赋值
(define factorial
  (lambda (n)
    (do ((i n (- i 1)) (a 1 (* a i)))
      ((zero? i) a))))              ;计算n的阶乘

(define fibonacci
  (lambda (n)
    (if (eqv? n 0)
        0
        (do ((i n (- i 1)) (a1 1 (+ a1 a2)) (a2 0 a1))
          ((eqv? i 1) a1)))))       ;计算斐波那契数列


