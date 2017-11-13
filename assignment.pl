
%Definitions for isElementInList(El, List)
isElementInList(X,[X|_]).
isElementInList(X,[_|T]):- isElementInList([X|T]).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T], ReversedList):-
    reverseList(T, ReversedT), conc(ReversedT, [H], ReversedList).

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List2, List2).
mergeLists([Item | Tail1], List2, [Item | Merged]) :-
      mergeLists(Tail1, List2, Merged).
