(define (double a) (* a 2))
(define (halve a) (/ a 2))
(define (even? n)
  (= (remainder n 2) 0))
(define (fast* a b)
  (define (fast-* a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-* a (double b) (halve n)))
          (else (fast-* (+ a b) b (- n 1)))))
  (fast-* 0 a b))

(print (fast* 4 5))
(print (fast* 3 9))
(print (fast* 3 8))
(print (fast* 4 4))

;ネットで見つけた解答例とほぼ同じだが、うまく動かない、何ならその解答例もうまく動かない。
;fast*のbの値が偶数だと、0を二倍にすることになるので、nの値だけが1/2されて、aは変化ない。

;できたああああああ
;aの値を二倍するのではなく、bを二倍する。
