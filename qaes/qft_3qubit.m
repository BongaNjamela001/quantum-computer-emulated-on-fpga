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

    I = complex(I);
    H = complex(H);
    % Define phase shift gates
    R2 = [1, 0; 0, 2.71828^(1i * 2 * pi / 4)];  % Controlled phase shift R2
    R3 = [1, 0; 0, 2.71828^(1i * 2 * pi / 8)];  % Controlled phase shift R3
    
    % Initialize AB matrix for H otimes I (4x4 matrix)
    AB = complex(zeros(4, 4));
    
    % Manually expand the tensor product
    AB(1:2, 1:2) = H(1,1) * I;
    AB(1:2, 3:4) = H(1,2) * I;
    AB(3:4, 1:2) = H(2,1) * I;
    AB(3:4, 3:4) = H(2,2) * I;
    
    % Initialize result matrix for, which results in an 8x8 matrix
    result = complex(zeros(8, 8));
    
    % Manually expand the tensor product 
    result(1:2, 1:2) = AB(1,1) * I;
    result(1:2, 3:4) = AB(1,2) * I;
    result(1:2, 5:6) = AB(1,3) * I;
    result(1:2, 7:8) = AB(1,4) * I;
    
    result(3:4, 1:2) = AB(2,1) * I;
    result(3:4, 3:4) = AB(2,2) * I;
    result(3:4, 5:6) = AB(2,3) * I;
    result(3:4, 7:8) = AB(2,4) * I;
    
    result(5:6, 1:2) = AB(3,1) * I;
    result(5:6, 3:4) = AB(3,2) * I;
    result(5:6, 5:6) = AB(3,3) * I;
    result(5:6, 7:8) = AB(3,4) * I;
    
    result(7:8, 1:2) = AB(4,1) * I;
    result(7:8, 3:4) = AB(4,2) * I;
    result(7:8, 5:6) = AB(4,3) * I;
    result(7:8, 7:8) = AB(4,4) * I;

    H1 = result;
    % Step 1: Apply Hadamard to the first qubit
    % Apply H to the first qubit while leaving the others unchanged
    % sizeA1 = size(H,1);
    % sizeB1 = size(I, 1);
    % sizeA2 = size(H, 2);
    % sizeB2 = size(I, 2);
    % size1 = sizeA1 * sizeB1;
    % size2 = sizeA2 * sizeB2;
    % AB = complex(zeros(2, 2));
    % for i = 1:sizeA1
    %     for j = 1:sizeA2
    %         AB((i-1)*2+1:i*2, (j-1)*2+1:j*2) = H(i, j) * I;
    %     end
    % end
    % result = complex(zeros(size(AB, 1)  * size(I, 1), size(AB, 2) * size(I, 2)));
    % for i = 1:size(AB, 1)
    %     for j = 1:size(AB, 2)
    %         result((i-1)*size(I, 1)+1:i*size(I, 1), (j-1)*size(I, 2)+1:j*size(I, 2)) = AB(i, j) * I;
    %     end
    % end
    % H1 = result;
    state_after_H1 = matrix_multiply(H1, initial_state);
    
    % Step 2: Apply controlled R2 between qubit 1 and qubit 2
    CR2_12 = controlled_phase_shift(2+0i, R2);  % Controlled phase shift on qubit 1 and 2
    state_after_CR2_12 = matrix_multiply(CR2_12, state_after_H1);
    
    % Step 3: Apply controlled R3 between qubit 1 and qubit 3
    CR3_13 = controlled_phase_shift(3+0i, R3);  % Controlled phase shift on qubit 1 and 3
    state_after_CR3_13 = matrix_multiply(CR3_13, state_after_CR2_12);
    
    % Step 4: Apply Hadamard to the second qubit
    % H2 = tensor_product(I, H, I);  % Apply H to the second qubit
    % Initialize intermediate matrix AB for I ⊗ H (4x4 matrix)
    AB = complex(zeros(4, 4));
    
    % Manually expand the tensor product I ⊗ H
    AB(1:2, 1:2) = I(1,1) * H;
    AB(1:2, 3:4) = I(1,2) * H;
    AB(3:4, 1:2) = I(2,1) * H;
    AB(3:4, 3:4) = I(2,2) * H;
    
    % Initialize result matrix for (I ⊗ H) ⊗ I, which results in an 8x8 matrix
    result2 = complex(zeros(8, 8));
    
    % Manually expand the tensor product (I ⊗ H) ⊗ I
    result2(1:2, 1:2) = AB(1,1) * I;
    result2(1:2, 3:4) = AB(1,2) * I;
    result2(1:2, 5:6) = AB(1,3) * I;
    result2(1:2, 7:8) = AB(1,4) * I;
    
    result2(3:4, 1:2) = AB(2,1) * I;
    result2(3:4, 3:4) = AB(2,2) * I;
    result2(3:4, 5:6) = AB(2,3) * I;
    result2(3:4, 7:8) = AB(2,4) * I;
    
    result2(5:6, 1:2) = AB(3,1) * I;
    result2(5:6, 3:4) = AB(3,2) * I;
    result2(5:6, 5:6) = AB(3,3) * I;
    result2(5:6, 7:8) = AB(3,4) * I;
    
    result2(7:8, 1:2) = AB(4,1) * I;
    result2(7:8, 3:4) = AB(4,2) * I;
    result2(7:8, 5:6) = AB(4,3) * I;
    result2(7:8, 7:8) = AB(4,4) * I;
    
    % Final result for I \otimes H \otimes I, with H applied to the second qubit
    H2 = result2;
    state_after_H2 = matrix_multiply(H2, state_after_CR3_13);
    
    % Step 5: Apply controlled R2 between qubit 2 and qubit 3
    CR2_23 = controlled_phase_shift(3, R2);  % Controlled phase shift on qubit 2 and 3
    state_after_CR2_23 = matrix_multiply(CR2_23, state_after_H2);
    
    % Step 6: Apply Hadamard to the third qubit
    % H3 = tensor_product(I, I, H);  % Apply H to the third qubit
    % Initialize intermediate matrix AB for I ⊗ I (4x4 matrix)
    AB = complex(zeros(4, 4));
    
    % Manually expand the tensor product I ⊗ I
    AB(1:2, 1:2) = I(1,1) * I;
    AB(1:2, 3:4) = I(1,2) * I;
    AB(3:4, 1:2) = I(2,1) * I;
    AB(3:4, 3:4) = I(2,2) * I;
    
    % Initialize result matrix for (I ⊗ I) ⊗ H, which results in an 8x8 matrix
    result3 = complex(zeros(8, 8));
    
    % Manually expand the tensor product (I ⊗ I) ⊗ H
    result3(1:2, 1:2) = AB(1,1) * H;
    result3(1:2, 3:4) = AB(1,2) * H;
    result3(1:2, 5:6) = AB(1,3) * H;
    result3(1:2, 7:8) = AB(1,4) * H;
    
    result3(3:4, 1:2) = AB(2,1) * H;
    result3(3:4, 3:4) = AB(2,2) * H;
    result3(3:4, 5:6) = AB(2,3) * H;
    result3(3:4, 7:8) = AB(2,4) * H;
    
    result3(5:6, 1:2) = AB(3,1) * H;
    result3(5:6, 3:4) = AB(3,2) * H;
    result3(5:6, 5:6) = AB(3,3) * H;
    result3(5:6, 7:8) = AB(3,4) * H;
    
    result3(7:8, 1:2) = AB(4,1) * H;
    result3(7:8, 3:4) = AB(4,2) * H;
    result3(7:8, 5:6) = AB(4,3) * H;
    result3(7:8, 7:8) = AB(4,4) * H;
    H3 = result3;
    state_after_H3 = matrix_multiply(H3, state_after_CR2_23);
    
    % Step 7: Apply SWAP to reverse qubit order (SWAP qubit 1 and qubit 3)
    SWAP = swap_gate(3);  % Apply SWAP between qubit 1 and qubit 3
    final_state = matrix_multiply(SWAP, state_after_H3);
end

% Utility function to calculate tensor product of 3 matrices

% function result = tensor_product(A, B, C)
%     % Tensor product of three matrices A, B, and C
%     sizeA1 = size(A,1);
%     sizeB1 = size(B, 1);
%     sizeA2 = size(A, 2);
%     sizeB2 = size(B, 2);
% 
%     AB = complex(zeros(sizeA1 * sizeB1, sizeA2 * sizeB2));
%     for i = 1:size(A, 1)
%         for j = 1:size(A, 2)
%             AB((i-1)*size(B, 1)+1:i*size(B, 1), (j-1)*size(B, 2)+1:j*size(B, 2)) = A(i, j) * B;
%         end
%     end
%     result = complex(zeros(size(AB, 1) * size(C, 1), size(AB, 2) * size(C, 2)));
%     for i = 1:size(AB, 1)
%         for j = 1:size(AB, 2)
%             result((i-1)*size(C, 1)+1:i*size(C, 1), (j-1)*size(C, 2)+1:j*size(C, 2)) = AB(i, j) * C;
%         end
%     end
% end

% Function for matrix multiplication
function result = matrix_multiply(M, v)
    result = M * v;
end

% Function for controlled phase shift gate
function controlled_matrix = controlled_phase_shift(target, R)
    % Controlled phase shift gate for 3 qubits
    I = eye(2);  % Identity matrix for qubits not involved
    if target == 2
        % controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
        % Define matrices
        I = complex([1, 0; 0, 1]);          % Identity matrix
        R = complex([1, 0; 0, exp(1i * pi/2)]);  % Phase shift gate matrix
        P0 = [1 0; 0 1];                    % Projection matrix for control state |0>
        P1 = [0 0; 0 0];                    % Projection matrix for control state |1>
        
        % Initialize AB_1 for P0 ⊗ I (4x4 matrix)
        AB_1 = complex(zeros(4, 4));
        AB_1(1:2, 1:2) = P0(1,1) * I;
        AB_1(1:2, 3:4) = P0(1,2) * I;
        AB_1(3:4, 1:2) = P0(2,1) * I;
        AB_1(3:4, 3:4) = P0(2,2) * I;
        
        % Initialize first tensor product result for P0 ⊗ I ⊗ I (8x8 matrix)
        controlled_part_1 = complex(zeros(8, 8));
        controlled_part_1(1:2, 1:2) = AB_1(1,1) * I;
        controlled_part_1(1:2, 3:4) = AB_1(1,2) * I;
        controlled_part_1(1:2, 5:6) = AB_1(1,3) * I;
        controlled_part_1(1:2, 7:8) = AB_1(1,4) * I;
        
        controlled_part_1(3:4, 1:2) = AB_1(2,1) * I;
        controlled_part_1(3:4, 3:4) = AB_1(2,2) * I;
        controlled_part_1(3:4, 5:6) = AB_1(2,3) * I;
        controlled_part_1(3:4, 7:8) = AB_1(2,4) * I;
        
        controlled_part_1(5:6, 1:2) = AB_1(3,1) * I;
        controlled_part_1(5:6, 3:4) = AB_1(3,2) * I;
        controlled_part_1(5:6, 5:6) = AB_1(3,3) * I;
        controlled_part_1(5:6, 7:8) = AB_1(3,4) * I;
        
        controlled_part_1(7:8, 1:2) = AB_1(4,1) * I;
        controlled_part_1(7:8, 3:4) = AB_1(4,2) * I;
        controlled_part_1(7:8, 5:6) = AB_1(4,3) * I;
        controlled_part_1(7:8, 7:8) = AB_1(4,4) * I;
        
        % Initialize AB_2 for P1 ⊗ R (4x4 matrix)
        AB_2 = complex(zeros(4, 4));
        AB_2(1:2, 1:2) = P1(1,1) * R;
        AB_2(1:2, 3:4) = P1(1,2) * R;
        AB_2(3:4, 1:2) = P1(2,1) * R;
        AB_2(3:4, 3:4) = P1(2,2) * R;
        
        % Initialize second tensor product result for P1 ⊗ R ⊗ I (8x8 matrix)
        controlled_part_2 = complex(zeros(8, 8));
        controlled_part_2(1:2, 1:2) = AB_2(1,1) * I;
        controlled_part_2(1:2, 3:4) = AB_2(1,2) * I;
        controlled_part_2(1:2, 5:6) = AB_2(1,3) * I;
        controlled_part_2(1:2, 7:8) = AB_2(1,4) * I;
        
        controlled_part_2(3:4, 1:2) = AB_2(2,1) * I;
        controlled_part_2(3:4, 3:4) = AB_2(2,2) * I;
        controlled_part_2(3:4, 5:6) = AB_2(2,3) * I;
        controlled_part_2(3:4, 7:8) = AB_2(2,4) * I;
        
        controlled_part_2(5:6, 1:2) = AB_2(3,1) * I;
        controlled_part_2(5:6, 3:4) = AB_2(3,2) * I;
        controlled_part_2(5:6, 5:6) = AB_2(3,3) * I;
        controlled_part_2(5:6, 7:8) = AB_2(3,4) * I;
        
        controlled_part_2(7:8, 1:2) = AB_2(4,1) * I;
        controlled_part_2(7:8, 3:4) = AB_2(4,2) * I;
        controlled_part_2(7:8, 5:6) = AB_2(4,3) * I;
        controlled_part_2(7:8, 7:8) = AB_2(4,4) * I;
        
        % Combine the two parts to obtain the final controlled matrix
        controlled_matrix = controlled_part_1 + controlled_part_2;
    elseif target == 3
        % controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], I, R);
        % Define matrices
        I = complex([1, 0; 0, 1]);          % Identity matrix
        R = complex([1, 0; 0, exp(1i * pi/2)]);  % Phase shift gate matrix
        P0 = [1 0; 0 1];                    % Projection matrix for control state |0>
        P1 = [0 0; 0 0];                    % Projection matrix for control state |1>
        
        % Initialize AB_1 for P0 ⊗ I (4x4 matrix)
        AB_1 = complex(zeros(4, 4));
        AB_1(1:2, 1:2) = P0(1,1) * I;
        AB_1(1:2, 3:4) = P0(1,2) * I;
        AB_1(3:4, 1:2) = P0(2,1) * I;
        AB_1(3:4, 3:4) = P0(2,2) * I;
        
        % Initialize first tensor product result for P0 ⊗ I ⊗ I (8x8 matrix)
        controlled_part_1 = complex(zeros(8, 8));
        controlled_part_1(1:2, 1:2) = AB_1(1,1) * I;
        controlled_part_1(1:2, 3:4) = AB_1(1,2) * I;
        controlled_part_1(1:2, 5:6) = AB_1(1,3) * I;
        controlled_part_1(1:2, 7:8) = AB_1(1,4) * I;
        
        controlled_part_1(3:4, 1:2) = AB_1(2,1) * I;
        controlled_part_1(3:4, 3:4) = AB_1(2,2) * I;
        controlled_part_1(3:4, 5:6) = AB_1(2,3) * I;
        controlled_part_1(3:4, 7:8) = AB_1(2,4) * I;
        
        controlled_part_1(5:6, 1:2) = AB_1(3,1) * I;
        controlled_part_1(5:6, 3:4) = AB_1(3,2) * I;
        controlled_part_1(5:6, 5:6) = AB_1(3,3) * I;
        controlled_part_1(5:6, 7:8) = AB_1(3,4) * I;
        
        controlled_part_1(7:8, 1:2) = AB_1(4,1) * I;
        controlled_part_1(7:8, 3:4) = AB_1(4,2) * I;
        controlled_part_1(7:8, 5:6) = AB_1(4,3) * I;
        controlled_part_1(7:8, 7:8) = AB_1(4,4) * I;
        
        % Initialize AB_2 for P1 ox I (4x4 matrix)
        AB_2 = complex(zeros(4, 4));
        AB_2(1:2, 1:2) = P1(1,1) * I;
        AB_2(1:2, 3:4) = P1(1,2) * I;
        AB_2(3:4, 1:2) = P1(2,1) * I;
        AB_2(3:4, 3:4) = P1(2,2) * R;
        
        % Initialize second tensor product result for P1 ox R ox I
        controlled_part_2 = complex(zeros(8, 8));
        controlled_part_2(1:2, 1:2) = AB_2(1,1) * I;
        controlled_part_2(1:2, 3:4) = AB_2(1,2) * I;
        controlled_part_2(1:2, 5:6) = AB_2(1,3) * I;
        controlled_part_2(1:2, 7:8) = AB_2(1,4) * I;
        
        controlled_part_2(3:4, 1:2) = AB_2(2,1) * I;
        controlled_part_2(3:4, 3:4) = AB_2(2,2) * I;
        controlled_part_2(3:4, 5:6) = AB_2(2,3) * I;
        controlled_part_2(3:4, 7:8) = AB_2(2,4) * I;
        
        controlled_part_2(5:6, 1:2) = AB_2(3,1) * I;
        controlled_part_2(5:6, 3:4) = AB_2(3,2) * I;
        controlled_part_2(5:6, 5:6) = AB_2(3,3) * I;
        controlled_part_2(5:6, 7:8) = AB_2(3,4) * I;
        
        controlled_part_2(7:8, 1:2) = AB_2(4,1) * I;
        controlled_part_2(7:8, 3:4) = AB_2(4,2) * I;
        controlled_part_2(7:8, 5:6) = AB_2(4,3) * I;
        controlled_part_2(7:8, 7:8) = AB_2(4,4) * I;
        
        % Combine the two parts to obtain the final controlled matrix
        controlled_matrix = controlled_part_1 + controlled_part_2;
    else
        % controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
        % Define matrices
        I = complex([1, 0; 0, 1]);          % Identity matrix
        R = complex([1, 0; 0, exp(1i * pi/2)]);  % Phase shift gate matrix
        P0 = [1 0; 0 1];                    % Control matrix for identity operation
        P1 = [0 0; 0 0];                    % Control matrix for phase shift
        
        % 1. Tensor Product for P0 ⊗ I ⊗ I (Identity Path)
        % Initialize AB_1 for P0 ⊗ I (4x4 matrix)
        AB_1 = complex(zeros(4, 4));
        AB_1(1:2, 1:2) = P0(1,1) * I;
        AB_1(1:2, 3:4) = P0(1,2) * I;
        AB_1(3:4, 1:2) = P0(2,1) * I;
        AB_1(3:4, 3:4) = P0(2,2) * I;
        
        % Expand P0 ⊗ I ⊗ I to an 8x8 matrix
        controlled_part_1 = complex(zeros(8, 8));
        controlled_part_1(1:2, 1:2) = AB_1(1,1) * I;
        controlled_part_1(1:2, 3:4) = AB_1(1,2) * I;
        controlled_part_1(1:2, 5:6) = AB_1(1,3) * I;
        controlled_part_1(1:2, 7:8) = AB_1(1,4) * I;
        
        controlled_part_1(3:4, 1:2) = AB_1(2,1) * I;
        controlled_part_1(3:4, 3:4) = AB_1(2,2) * I;
        controlled_part_1(3:4, 5:6) = AB_1(2,3) * I;
        controlled_part_1(3:4, 7:8) = AB_1(2,4) * I;
        
        controlled_part_1(5:6, 1:2) = AB_1(3,1) * I;
        controlled_part_1(5:6, 3:4) = AB_1(3,2) * I;
        controlled_part_1(5:6, 5:6) = AB_1(3,3) * I;
        controlled_part_1(5:6, 7:8) = AB_1(3,4) * I;
        
        controlled_part_1(7:8, 1:2) = AB_1(4,1) * I;
        controlled_part_1(7:8, 3:4) = AB_1(4,2) * I;
        controlled_part_1(7:8, 5:6) = AB_1(4,3) * I;
        controlled_part_1(7:8, 7:8) = AB_1(4,4) * I;
        
        % 2. Tensor Product for P1 ⊗ R ⊗ I (Phase Shift Path)
        % Initialize AB_2 for P1 ⊗ R (4x4 matrix)
        AB_2 = complex(zeros(4, 4));
        AB_2(1:2, 1:2) = P1(1,1) * R;
        AB_2(1:2, 3:4) = P1(1,2) * R;
        AB_2(3:4, 1:2) = P1(2,1) * R;
        AB_2(3:4, 3:4) = P1(2,2) * R;
        
        % Expand P1 ⊗ R ⊗ I to an 8x8 matrix
        controlled_part_2 = complex(zeros(8, 8));
        controlled_part_2(1:2, 1:2) = AB_2(1,1) * I;
        controlled_part_2(1:2, 3:4) = AB_2(1,2) * I;
        controlled_part_2(1:2, 5:6) = AB_2(1,3) * I;
        controlled_part_2(1:2, 7:8) = AB_2(1,4) * I;
        
        controlled_part_2(3:4, 1:2) = AB_2(2,1) * I;
        controlled_part_2(3:4, 3:4) = AB_2(2,2) * I;
        controlled_part_2(3:4, 5:6) = AB_2(2,3) * I;
        controlled_part_2(3:4, 7:8) = AB_2(2,4) * I;
        
        controlled_part_2(5:6, 1:2) = AB_2(3,1) * I;
        controlled_part_2(5:6, 3:4) = AB_2(3,2) * I;
        controlled_part_2(5:6, 5:6) = AB_2(3,3) * I;
        controlled_part_2(5:6, 7:8) = AB_2(3,4) * I;
        
        controlled_part_2(7:8, 1:2) = AB_2(4,1) * I;
        controlled_part_2(7:8, 3:4) = AB_2(4,2) * I;
        controlled_part_2(7:8, 5:6) = AB_2(4,3) * I;
        controlled_part_2(7:8, 7:8) = AB_2(4,4) * I;
        
        % Combine both parts to obtain the controlled matrix
        controlled_matrix = controlled_part_1 + controlled_part_2;
    end
end

% function controlled_matrix = controlled_phase_shift(target, R)
%     % Controlled phase shift gate for 3 qubits
%     % Parameters:
%     % - target: Target qubit (2 or 3) for applying the phase shift
%     % - R: The phase shift matrix
% 
%     I = eye(2);  % Identity matrix for qubits not involved
%     controlled_matrix = complex(zeros(8, 8));  % Initialize as complex matrix
% 
%     % Apply controlled phase shift gate depending on the target qubit
%     if target == 2
%         controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
%     elseif target == 3
%         controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], I, R);
%     else
%         controlled_matrix = tensor_product([1 0; 0 1], I, I) + tensor_product([0 0; 0 0], R, I);
%     end
% end

% Function for SWAP gate between qubit 1 and qubit 3
function SWAP = swap_gate(n)
    % Swap gate for swapping qubit 1 and qubit 3 in a 3-qubit system
    SWAP = eye(8);
    SWAP([1, 8], [1, 8]) = SWAP([8, 1], [8, 1]);  % SWAP |000> and |111>
    SWAP([2, 7], [2, 7]) = SWAP([7, 2], [7, 2]);  % SWAP |001> and |110>
    SWAP([3, 6], [3, 6]) = SWAP([6, 3], [6, 3]);  % SWAP |010> and |101>
    SWAP([4, 5], [4, 5]) = SWAP([5, 4], [5, 4]);  % SWAP |011> and |100>
end
