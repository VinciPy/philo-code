% simple example
man(socrates).
mortal(X) :- man(X).
% Formal argument to prove the immortal soul
% Based on classical philosophical premises

% Premise 1: The soul is the source of thought
soul_source_thought(X) :- soul(X).

% Premise 2: Thought is immaterial
thought_immaterial(X) :- thought(X).

% Premise 3: What is immaterial cannot be destroyed
immaterial_indestructible(X) :- immaterial(X).

% Premise 4: What cannot be destroyed is immortal
indestructible_immortal(X) :- immaterial_indestructible(X).

% Premise 5: Every human being possesses a soul
human_being_soul(X) :- human_being(X).

% Conclusion: The human soul is immortal
soul_immortal(X) :- 
    human_being_soul(X),
    soul_source_thought(X),
    thought_immaterial(X),
    immaterial_indestructible(X),
    indestructible_immortal(X).

% Specific facts
human_being(socrates).
soul(socrates).
thought(socrates).

% Query to verify if Socrates' soul is immortal
% ?- soul_immortal(socrates).
