.\" De Morgan's Laws (Predicate Logic)
.TS
allbox center tab(;);
l l l .
;$not forall(x) A iff exists(x) not A$;$not exists(x) A iff forall(x) not A$


Assertion of Universality

    ∀x:P(x)⊣⊢¬(∃x:¬P(x))

        If everything is, there exists nothing that is not.


Denial of Existence

    ∀x:¬P(x)⊣⊢¬(∃x:P(x))

        If everything is not, there exists nothing that is.


Denial of Universality

    ¬(∀x:P(x))⊣⊢∃x:¬P(x)

        If not everything is, there exists something that is not.


Assertion of Existence

    ¬(∀x:¬P(x))⊣⊢∃x:P(x)

        If not everything is not, there exists something that is.


https://proofwiki.org/wiki/De_Morgan%27s_Laws_(Predicate_Logic)


.TE
