;Note that "p" is recursively defined as itself.
;if the interpreter is following applicative-order evaluation, "p" gets evaluated first. Given the above deifinition of "p", the program enters an infinite
;recursive loop, and the expression is not evaluated.
;if normal-order evaluation is being followed "p" is never evaluated, and the expression yields 0.
