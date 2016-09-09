#lang racket

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (f-rec (- n 2))
         (f-rec (- n 3)))))

;; (define (f-iterate n sum)
;;   (println n)
;;   (println sum)
;;   (println "---")
;;   (if (= n 0)
;;       sum
;;       (f-iterate (- n 1)
;;                  (if (< n 3)
;;                      sum
;;                      (+ sum
;;                         (- n 1)
;;                         (- n 2)
;;                         (- n 3))))))

(define (f-itr n)

  (define (f-iterate i sum)
    (if (= i 0)
        sum
        (f-iterate (- i 1)
                   (if (< i 3)
                       n
                       (+ sum
                          (- i 1)
                          (- i 2)
                          (- i 3))))))

  (f-iterate n 0))

(define (tests)
  (println (42)))
