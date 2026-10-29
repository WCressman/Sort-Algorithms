;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Inserter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; O(n**2)

(define (insert-sort lst)
  (insert-sort-h lst '()))

(define (insert-sort-h remain sorted)
  (if (empty? remain)
      sorted
      (insert-sort-h (rest remain) (inserter (first remain) sorted))))

(define (inserter element sorted-list)
  (cond
    [(empty? sorted-list) (cons element sorted-list)]
    [(< element (first sorted-list)) (cons element sorted-list)]
    [else (cons (first sorted-list) (inserter element (rest sorted-list)))]))

(insert-sort (list 9 137 12 83 1 2 5))