;since the interpreter is following applicative-order evaluation, it evaluates all the arguments before applying them.
;as a result of this, the new-if enters an infinite recursive loop, 'since square-iter' procedure gets called with the same values at each recursive step.
;This means that the recursive loop never terminates.