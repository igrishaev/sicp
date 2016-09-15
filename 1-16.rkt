#lang racket

(define (fast-expt b n)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (* b b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))

(define (tests)
  (println (= 1 (fast-expt 2 0)))
  (println (= 2 (fast-expt 2 1)))
  (println (= 512 (fast-expt 2 9))))

(tests)
