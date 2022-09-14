#lang sicp
;map表达式
;语法：(map procedure list1 list2 ...)
;列表 list1 list2 ... 必须具有同样的长度；
;过程 procedure 接受的参数个数同列表的个数，各个列表中对应的变量分别作为过程 procedure 的参数被执行， 将每次的运算结果以列表形式返回。
(map abs '(1 -2 3 -4 5 -6))     ;返回(1 2 3 4 5 6)

(map (lambda (x y) (* x y))
     '(1 2 3 4)
     '(8 7 6 5))                ;返回(8 14 18 20)


;for-each 表达式
;语法：(for-each procedure list1 list2 ...)
;同 map表达式， 但是不返回结果列表
(for-each abs '(1 -8))