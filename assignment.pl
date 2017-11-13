
%Definitions for isElementInList(El, List)
isElementInList(El,[El|_]).
isElementInList(El,[_|T]):- isElementInList(El,T).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T],ReversedList):- mergeLists(Reversed_List,[H],ReversedList),
reverseList(T,Reversed_List).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El,[ ],[El]).
insertElementIntoListEnd(El,[H|T],[H|NewList]) :- insertElementIntoListEnd(El,T,NewList).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List2, List2).
mergeLists([Item | Tail1], List2, [Item | Merged]) :-
      mergeLists(Tail1, List2, Merged).
