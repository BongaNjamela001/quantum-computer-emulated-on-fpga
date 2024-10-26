function new_state = x_gate(state)
    % Apply the Pauli-X gate to a single qubit
    % Parameters:
    %   qubit_state - a 2x1 column vector representing the qubit state, e.g., [1; 0] for |0> or [0; 1] for |1>
    % Returns:
    %   new_state - the resulting state after applying the X gate

    % Define the Pauli-X gate (NOT gate)
    X = [0, 1; 
         1, 0];

    % Apply the X gate to the input qubit state
    new_state = X * state;
end