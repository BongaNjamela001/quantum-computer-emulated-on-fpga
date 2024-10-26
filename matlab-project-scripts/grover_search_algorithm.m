function [final_state] = grover_search_algorithm()
    % Initialize parameters
    N = 4;  % Number of entries (2-qubits)
    target_index = 4;  % Index of the target entry (in your case, index 4 -> |11>)
    
    % Basis states |00>, |01>, |10>, |11> as column vectors
    qubit_00 = [1; 0; 0; 0];
    qubit_01 = [0; 1; 0; 0];
    qubit_10 = [0; 0; 1; 0];
    qubit_11 = [0; 0; 0; 1];
    
    % Oracle matrix (inverts the sign of the target state |11>)
    oracle_matrix = eye(N);
    oracle_matrix(target_index, target_index) = -1;

    % Diffusion operator matrix (Grover diffusion operator)
    H_2 = (1/sqrt(2)) * [1, 1; 1, -1];  % Hadamard gate
    H_n = kron(H_2, H_2);  % Apply Hadamard to both qubits (2-qubit Hadamard)
    
    % Mean operator (reflection around the average state)
    mean_op = 2 * (ones(N) / N) - eye(N);
    
    % Initial state (after applying Hadamard to |00>)
    initial_state = H_n * qubit_00;  % Create uniform superposition
    
    % Apply Oracle (flips sign of target state |11>)
    after_oracle = oracle_matrix * initial_state;
    
    % Apply Diffusion Operator
    final_state = mean_op * after_oracle;
    
    % Normalize the final state
    final_state = final_state / norm(final_state);
    
    % Display results
    disp('Final state vector after Grover’s search:');
    disp(final_state);
    
    % Measure probability of each state
    probabilities = abs(final_state).^2;
    disp('Probabilities of each state:');
    disp(probabilities);
end
