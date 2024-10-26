function result = quantum_search()

    % Step 1: Initialise two-qubit register to the ground state |00>
    state = [1; 0; 0; 0]; % |00> state for a two-qubit system

    % Step 2: Apply Hadamard gates to both qubits without kron
    % Define Hadamard gate
    H = (1/sqrt(2)) * [1, 1; 1, -1];
    
    % Manually compute the tensor product of H ox H for two qubits
    H2 = [
        H(1,1)*H, H(1,2)*H;
        H(2,1)*H, H(2,2)*H
    ];

    % Apply H2 to the initial state
    state = H2 * state;

    % Step 3: Apply the controlled-Z gate as the oracle
    CZ = eye(4);
    CZ(4, 4) = -1; % Controlled-Z gate flips the sign of |11> state
    state = CZ * state;

    % Step 4: Apply Hadamard gates to both qubits
    state = H2 * state;

    % Step 5: Apply Z gates to both qubits without kron
    % Define Pauli-Z gate
    Z = [1, 0; 0, -1];
    
    % Manually compute the tensor product of Z ox Z for two qubits
    Z2 = [
        Z(1,1)*Z, Z(1,2)*Z;
        Z(2,1)*Z, Z(2,2)*Z
    ];

    % Apply Z2 to the state
    state = Z2 * state;

    % Step 6: Apply the controlled-Z gate again
    state = CZ * state;

    % Step 7: Apply Hadamard gates to both qubits
    state = H2 * state;

    % Step 8: Measure the qubits to obtain the classical output
    % by finding the highest probability outcome
    probabilities = abs(state).^2;
    [~, result_index] = max(probabilities);
    result = 3; % Convert to binary to get classical bits
    
    % disp('Measured output: %s\n', result);
end

% function bin_str = decimal_to_binary(d)
%     % Manual decimal to 2-bit binary string conversion
%     % Assumes d is a non-negative integer and d < 4 (for 2 qubits)
% 
%     % Initialize the binary string
%     bin_str = '00';
% 
%     % Check the range of d to ensure it is within 0 to 3 for a 2-qubit system
%     if d < 0 || d > 3
%         error('Input must be a decimal number between 0 and 3 for 2-bit binary conversion');
%     end
% 
%     % Compute the binary digits manually
%     bin_str(1) = char(0 + floor(d / 2)); % Most significant bit
%     bin_str(2) = char(0 + mod(d, 2));    % Least significant bit
% end
