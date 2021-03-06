#lang racket/base

(require racket/contract/base)
(provide (contract-out
          [dict-ref-lens
           (-> any/c (lens/c functional-dict? any/c))]
          ))

(require lens/private/base/main lens/private/util/functional-dict racket/dict fancy-app)
(module+ test
  (require rackunit))

(define (dict-ref-lens key)
  (make-lens (dict-ref _ key)
             (dict-set _ key _)))

(module+ test
  (check-equal? (lens-transform/list '((a . 1) (b . 2) (c . 3)) (dict-ref-lens 'a) (* 100 _))
                '((a . 100) (b . 2) (c . 3))))
