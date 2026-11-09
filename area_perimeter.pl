% Task1
% Calculate the area and the perimeter of the square, rectangle and triangle.

area_perimeter:-
    nl, write('Choose a shape or exit.'), nl,
    write('a. Square'), nl,
    write('b. Rectangle'), nl,
    write('c. Triangle'), nl,
    write('e. Exit'), nl, read(X), shape(X), nl.

% Square
shape(a):-
    write('What is the length of side? '), read(Side_length),
    Sq_area is Side_length ** 2,
    Sq_perimeter is Side_length * 4,
    write('The area of the square is: '), write(Sq_area), nl,
    write('The perimeter of the square is: '), write(Sq_perimeter), nl,
    area_perimeter.

% Rectangle
shape(b):-
     write('What is the height? '), read(Height),
     write('What is the width? '), read(Width),
     Rec_area is Width * Height,
     Rec_perimeter is 2 * (Width + Height),
     write('The area of the rectangle is: '), write(Rec_area), nl,
     write('The perimeter of the rectangle is: '), write(Rec_perimeter), nl,
     area_perimeter.

% Triangle
shape(c):-
    write('What is the vertical height? '), read(V_height),
    write('What is the base? '), read(Base),
    write('What is the length of the first side? '), read(A),
    write('What is the length of the second side? '), read(B),
    write('What is the length of the third side? '), read(C),
    Tri_area is 0.5 * V_height * Base,
    Tri_perimeter is A + B + C,
    write('The area of the triangle is: '), write(Tri_area), nl,
    write('The perimeter of the triangle is: '), write(Tri_perimeter), nl,
    area_perimeter.

% Exit
shape(e):-
    write('Exiting program').

% Invalid input
shape(X):-
    X \= a, X \= b, X \= c, X \= e,
    write('Invalid choice.'), nl,
    area_perimeter.
