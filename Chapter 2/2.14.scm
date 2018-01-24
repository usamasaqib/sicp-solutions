(define A (make-center-percent 3.65 4.1))
(define B (make-center-percent 6.2 3.2))

(display "A/A par1: " )
(par1 A A)
(center (par1 A A))
(percent (par1 A A))

(display "A/A par2: " )
(par2 A A)
(center (par2 A A))
(percent (par2 A A))

(display "A/B par1: " )
(par1 A B)
(center (par1 A B))
(percent (par1 A B))

(display "A/B par2: " )
(par2 A B)
(center (par2 A B))
(percent (par2 A B))


;A/A par1: (mcons 1.612312992315082 2.0622709332638163)
;Center: 1.837291962789449
;Percent: 12.245139859687578

;A/A par2: (mcons 1.750175 1.8998249999999997)
;Center: 1.8249999999999997
;Percent: 4.09999999999999

;A/B par1: (mcons 2.0599723045091953 2.5585990833460497)
;Center: 2.3092856939276225
;Percent: 10.796125835534715

;A/B par2: (mcons 2.21088308820821 2.3839538500007356)
;Center: 2.297418469104473
;Percent: 3.766635554644689
