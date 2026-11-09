% Task2
% Create a login page that checks the user and password from the dataset.

% Dataset (username, password)
user(sara, pass123).
user(layan, pass456).
user(nada, pass789).
user(maha, pass101).

% Login
login:-
    attempt(1).

attempt(N):-
    N > 3, !,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

attempt(N):-
    nl, write('Enter username: '), read(User),
    write('Enter password: '), read(Password),
    (   ground(User), ground(Password), user(User, Password) -> write('Login successful'), nl
    ;   write('Login unsuccessful'), nl,
        N_incremented is N + 1,
        attempt(N_incremented)
    ).
