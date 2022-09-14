#lang sicp
;apply负责应用函数
;语法：(apply 函数 列表)
(define (sum-of-squares numbers)
  (apply + (map (lambda (x) (* x x)) numbers)))    ;(sum-of-squares '(1 2 3 4))  -->  return 30

;(apply + '(1 2 3 4))   <-->   (+ 1 2 3 4)
;(apply car '(1 2 3 4))   <-->   (car '(1 2 3 4))


;矩阵转置
(define (transpose matrix)
  (apply map (cons list matrix)))        ;(transpose '((1 2 3)(4 5 6)(7 8 9)))  --> return ((1 4 7) (2 5 8) (3 6 9))

;(cons list '((1 2 3)(4 5 6)(7 8 9)))
; -->(list '(1 2 3) '(4 5 6) '(7 8 9))

;(apply map (cons list '((1 2 3)(4 5 6)(7 8 9)))
;-->(apply map '(list (1 2 3) (4 5 6) (7 8 9)))
;-->(map list '(1 2 3) '(4 5 6) '(7 8 9))

