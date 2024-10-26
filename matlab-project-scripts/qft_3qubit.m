function final_state = qft_3qubit(initial_state)
    % Quantum Fourier Transform for 3-qubit system
    % initial_state is a column vector of length 8 (2^3), representing the initial state of the qubits
    
    % Check if initial_state is of correct size
    if length(initial_state) ~= 8
        error('Initial state must be a column vector of length 8.');
    end
    
    % Define the identity and Hadamard gates
    I = [1, 0; 0, 1];  % Identity matrix
    H = (1/sqrt(2)) * [1, 1; 1, -1];  % Hadamard gate
    
    % Define phase shift gates
    R2 = [1, 0; 0, 2.71828^(1i * 2 * pi / 4)];  % Controlled phase shift R2
    R3 = [1, 0; 0, 2.71828^(1i * 2 * pi / 8)];  % Controlled phase shift R3
    
    % Step 1: Apply Hadamard to the first qubit
    % Apply H to the first qubit while leaving the others unchanged
    H1 = tensor_product(H, I, I);  % Apply H to the first qubit
    state_after_H1 = matrix_multiply(H1, initial_state);
    
    % Step 2: Apply controlled R2 between qubit 1 and qubit 2
    CR2_12 = controlled_phase_shift(2, R2);  % Controlled phase shift on qubit 1 and 2
    state_after_CR2_12 = matrix_multiply(CR2_12, state_after_H1);
    
    % Step 3: Apply controlled R3 between qubit 1 and qubit 3
    CR3_13 = controlled_phase_shift(3, R3);  % Controlled phase shift on qubit 1 and 3
    state_after_CR3_13 = matrix_multiply(CR3_13, state_after_CR2_12);
    
    % Step 4: Apply Hadamard to the second qubit
    H2 = tensor_product(I, H, I);  % Apply H to the second qubit
    state_after_H2 = matrix_multiply(H2, state_after_CR3_13);
    
    % Step 5: Apply controlled R2 between qubit 2 and qubit 3
    CR2_23 = controlled_phase_shift(3, R2);  % Controlled phase shift on qubit 2 and 3
    state_after_CR2_23 = matrix_multiply(CR2_23, state_after_H2);
    
    % Step 6: Apply Hadamard to the third qubit
    H3 = tensor_product(I, I, H);  % Apply H to the third qubit
    state_after_H3 = matrix_multiply(H3, state_after_CR2_23);
    
    % Step 7: Apply SWAP to reverse qubit order (SWAP qubit 1 and qubit 3)
    SWAP = swap_gate(3);  % Apply SWAP between qubit 1 and qubit 3
    final_state = matrix_multiply(SWAP, state_after_H3);
end

% Utility function to calculate tensor product of 3 matrices
function result = tensor_product(A, B, C)
    % Tensor product of three matrices A, B, and C
    AB = zeros(size(A, 1) * size(B, 1), size(A, 2) * size(B, 2));
    for i = 1:size(A, 1)
        for j = 1:size(A, 2)
            AB((i-1)*size(B, 1)+1:i*size(B, 1), (j-1)*size(B, 2)+1:j*size(B, 2)) = A(i, j) * B;
        end
    end
    result = zeros(size(AB, 1) * size(C, 1), size(AB, 2) * size(C, 2));
    for i = 1:size(AB, 1)
        for j = 1:size(AB, 2)
            result((i-1)*size(C, 1)+1:i*size(C, 1), (j-1)*size(C, 2)+1:j*size(C, 2)) = AB(i, j) * C;
        end
    end
end

% Function for matrix multiplication
function result = matrix_multiply(M, v)
    result = M * v;
end

% Function for controlled phase shift gate
function controlled_matrix = controlled_phase_shift(target, R)
    % Controlled phase shift gate for 3 qubits
    I = eye(2);  % Identity matrix for qubits not involved
    if target == 2
        controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
    elseif target == 3
        controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], I, R);
    else
        controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
    end
end

% Function for SWAP gate between qubit 1 and qubit 3
function SWAP = swap_gate(n)
    % Swap gate for swapping qubit 1 and qubit 3 in a 3-qubit system
    SWAP = eye(8);
    SWAP([1, 8], [1, 8]) = SWAP([8, 1], [8, 1]);  % SWAP |000> and |111>
    SWAP([2, 7], [2, 7]) = SWAP([7, 2], [7, 2]);  % SWAP |001> and |110>
    SWAP([3, 6], [3, 6]) = SWAP([6, 3], [6, 3]);  % SWAP |010> and |101>
    SWAP([4, 5], [4, 5]) = SWAP([5, 4], [5, 4]);  % SWAP |011> and |100>
end
