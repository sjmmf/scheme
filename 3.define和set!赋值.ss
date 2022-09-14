#lang sicp
;用define和set!赋值
;语法：(define var exp) , (set! var exp)
;define和 set! 表达式的赋值在全局有效。define 和 set! 的区别是define既能赋值又能定义变量，而set!只能对已经定义的变量赋值
;注：要使用set!必须先要用define定义

(define a 1)   ;return 1

(set! a 2)     ;return 2

(let ((a 3)) a)  ;首先显示3,交互界面输入a显示2,即let赋值只在let语句有效

(let ((a 3)) (set! a 4) a)  ;set!还是嵌套在let中，有效范围尽在let中,显示4，然后交互界面输入a显示2

(let ((a 3)) (define a 5) a)  ;define还是嵌套在let中，有效范围尽在let中,显示5，然后交互界面输入a显示2

;(set! b 1)   ;错误，b尚未定义

