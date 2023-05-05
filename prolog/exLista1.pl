  SWISH
File
Edit
Examples
Help
277 users online
Search
Login with GoogleLogin with StackOverflow
8770
P1_IA_Prolog
80
​
81
fatorial(0, 1).
82
fatorial(X, Z) :-
83
    Y is X - 1,
84
    fatorial(Y, W),
85
    Z is X * W.
86
​
87
% Mário enferrujado
88
​
89
fibonacci(0, 0).
90
fibonacci(1, 1).
91
fibonacci(X, R) :-
92
    Y is X - 1,
93
    fibonacci(Y, J),
94
    W is Y - 1,
95
    fibonacci(W, K),
96
    R is J + K.
97
​
98
% Mário dígrafo
99
​
100
addElemento(B, [ A | Tail], [B, A | Tail]).
101
​
102
% Mário dígrafado
103
​
104
addElementoFinal(B, List, Response) :-
105
    reverse(List, ListR),
106
    addElemento(B, ListR, ListR2),
107
    reverse(ListR2, Response).
108
​
109
% Mário dígrafado 2
110
adicionar_no_fim(X, [], [X]).
111
adicionar_no_fim(X, [H|T], [H|Resultado]) :-
112
    adicionar_no_fim(X, T, Resultado).
113
​
114
% Mário invertido
115
​
116
inverteLista([], []).
117
inverteLista([H | Tail], R) :-
118
    inverteLista(Tail, W),
119
    append(W, [H], R).
120
​
121
% Mário máximo
122
​
123
maximo([], null).
124
maximo([R], R).
125
maximo([H | Tail], R) :-
126
    maximo(Tail, MaiorDaCalda),
127
    (MaiorDaCalda > H ->  R is MaiorDaCalda; R is H).
128
​
129
% Mário bfs
130
​
131
filho_nao_visitados(NodeAtual, NodesJaVisitados, Resultados):-
132
    findall([Filho, NodeAtual | NodeJaVisitados],(node(Filho, NodeAtual), not(member(Filho, NodeJaVisitados)), Resultados).
133
​
134
bfs(NodeInicial, NodeFinal, Resposta):-
135
    bfs_aux([[NodeInicial]], NodeFinal, RespostaInvertida),
136
    reverse(RespostaInvertida, Resposta).
137
            
138
​

bfs(a, e, C).
?-
 table results