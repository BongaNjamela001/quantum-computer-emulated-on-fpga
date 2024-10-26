function result_state = apply_X_gate_all(qubit_state)
    % APPLY_X_GATE_ALL Applies the X gate to all qubits in a 3-qubit state.
    %
    % qubit_state: Input state vector (8x1) representing the 3-qubit state
    
    % Check if input qubit state is valid (8x1)
    if length(qubit_state) ~= 8
        error('Input qubit_state must be a column vector of size 8.');
    end
    
    % Define the X gate
    X_gate = [0 1; 1 0];
    
    % Initialize the result state as a zero vector of the same size
    result_state = zeros(8, 1);
    
    % Perform the matrix multiplication manually for each row and column
    % Expanded matrix multiplication for X_gate applied to all 3 qubits
    % The state order is assumed to be |q2 q1 q0> (from MSB to LSB)
    
    % Full 8x8 matrix corresponding to X_gate ⊗ X_gate ⊗ X_gate:
    % This expands X_gate operation on all three qubits
    full_X_gate = [...
        0 0 0 0 0 0 0 1; % row 1
        0 0 0 0 0 0 1 0; % row 2
        0 0 0 0 0 1 0 0; % row 3
        0 0 0 0 1 0 0 0; % row 4
        0 0 0 1 0 0 0 0; % row 5
        0 0 1 0 0 0 0 0; % row 6
        0 1 0 0 0 0 0 0; % row 7
        1 0 0 0 0 0 0 0]; % row 8
    
    % Perform element-by-element matrix multiplication
    for row = 1:8
        for col = 1:8
            result_state(row) = result_state(row) + full_X_gate(row, col) * qubit_state(col);
        end
    end
end
