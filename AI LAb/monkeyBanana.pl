% Initial state of the room
initial_state(room(middle, on_floor, middle, no)).

% Define the actions the monkey can take
move(State, grasp, State1) :-
    can_grasp(State),
    State = room(At1, on_floor, At1, Has),
    update(State, grasp, State1).

move(State, climb, State1) :-
    can_climb(State),
    State = room(At, on_floor, At, Has),
    update(State, climb, State1).

move(State, push(To), State1) :-
    can_push(State, To),
    State = room(At1, on_floor, At1, Has),
    update(State, push(To), State1).

% Define the conditions for performing actions
can_grasp(room(_, on_floor, _, has_not)).
can_climb(room(_, on_floor, _, _)).
can_push(room(middle, on_floor, middle, has_not), left).
can_push(room(right, on_floor, right, has_not), left).
can_push(room(left, on_floor, left, has_not), right).
can_push(room(_, on_chair, _, has_not), up).

% Update the state after performing an action
update(room(Banana, on_floor, Banana, has_not), grasp, room(Banana, on_floor, Banana, has)).
update(room(At, on_floor, At, Has), climb, room(At, on_chair, At, Has)).
update(room(At1, on_floor, At1, Has), push(To), room(To, on_floor, To, Has)).
update(room(At, on_chair, At, Has), push(up), room(At, on_floor, At, Has)).

% Define the goal state
goal_state(room(_, _, _, has)).

% Define the solve predicate
solve(State, []) :-
    goal_state(State).

solve(State, [Move | Moves]) :-
    move(State, Move, NextState),
    solve(NextState, Moves).

% Example usage
