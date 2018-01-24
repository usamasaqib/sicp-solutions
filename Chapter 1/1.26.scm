;By explicitly using multiplication, the programmers evaluates each recursive step twice, resulting in the 
;following recurrence tree. 
;
;                           n
;                         /    \
;                        n/2    n/2
;                       /  \    /   \
;                   (n/4)(n/4) (n/4)(n/4)
;                     |    |     |    |
;                     |    |     |    |
;                     1    1     1    1

;By solving this recurrence tree level by leve we get cn/2 + cn/2 = cn
;Which is interpreted as O(n).
