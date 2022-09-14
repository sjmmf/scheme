#lang sicp
;lambda表达式和函数定义
;语法：(lambda (var ...) exp1 exp2 ...)
;说明：lambda 表达式用于定义函数。var ... 是参数，exp1 exp2 ...是函数的执行 部分。通常需要结合局部定义 let 或者全局定义表达式 define，再进行函数调用。
((lambda (x) (+ x x)) (* 3 4))  ;return 24


;在let表达式中定义函数,用 let 定义的函数只能在 let 表达式中有效
;通过赋值语句，将lambda表达式赋值给相应的函数
(let ((double (lambda(x) (+ x x))))
  (list (double (* 3 4))
        (double (/ 100 50))
        (double (- 2 5))))     ;return (24 4 -6),list 表达式负责生成列表


;用define全局定义表达式来定义函数
(define add (lambda (x y) (+ x y)))   ;(add 3 6)  ->  return 9


;定义函数的简写
;用 define 定义的函数的语法可以简化，即将 lambda 去掉
;(define var0                        (define (var0 var1 ... varn)
;  (lambda (var1 ... varn)    ->       e1 e2 ...) 
;    e1 e2 ...)) 
(define (double x) (+ x x))    ;(double 9)  ->  return 18