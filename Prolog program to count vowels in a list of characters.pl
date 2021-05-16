vowel([a],1)
vowel([a],Counter):-Counter is 1.
vowel([e],Counter):-Counter is 1.
vowel([i],Counter):-Counter is 1.
vowel([o],Counter):-Counter is 1.
vowel([u],Counter):-Counter is 1.
vowel([_];[],Counter):-Counter is 0.
cvowel([H|T],Counter1):-cvowel(T,Count),vowel(H,Counter),Count is Count

+Counter,Counter1 is Counter1+Count.