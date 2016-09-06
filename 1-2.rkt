#lang racket

(define value
  (/ (+ 5
        4
        (- 2
           (- 3
              (+ 6
                 (/ 4
                    5)))))
     (* 3
        (- 6
           2)
        ( - 2
            7))))

(define (test)
  (println "testing")
  (println (= -37/150 value)))

(test)
