#lang racket

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (f-rec (- n 2))
         (f-rec (- n 3)))))

(define (tests)
  (println (= 1 (f-rec 1)))
  (println (= 2 (f-rec 2)))
  (println (= 3 (f-rec 3)))
  (println (= 6 (f-rec 4)))
  (println (= 11 (f-rec 5))))

(tests)
