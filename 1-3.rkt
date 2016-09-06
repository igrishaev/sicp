#lang racket

(define (max a b)
  (if (>= a b) a b))

(define (square x)
  (* x x))

(define (sq-sum a b c)
  (+ (square (max a b))
     (square (max b c))))

(define (test)
  (println "testing")
  (println (= (+ 4 9) (sq-sum 1 2 3)))
  (println (= (+ 36 25) (sq-sum 6 5 4)))
  (println (= (+ 16 4) (sq-sum 4 0 2)))
  (println (= (+ 0 0) (sq-sum 0 0 0))))

(test)
