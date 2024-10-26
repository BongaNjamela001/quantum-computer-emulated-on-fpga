function test_qft_3qubit()
    % Testbench for qft_3qubit function
    % Tests various 3-qubit initial states and checks the result of the QFT
    
    % Test case 1: |000> state
    initial_state_000 = [1; 0; 0; 0; 0; 0; 0; 0];  % |000>
    expected_000 = [1; 0; 0; 0; 0; 0; 0; 0];  % QFT(|000>) = |000> (no phase change)
    
    run_test_case(initial_state_000, expected_000, 'Test Case 1: |000>');

    % Test case 2: |001> state
    initial_state_001 = [0; 1; 0; 0; 0; 0; 0; 0];  % |001>
    expected_001 = (1/sqrt(8)) * [1; 2.71828^(2*pi*1i/8); 2.71828^(4*pi*1i/8); 2.71828^(6*pi*1i/8); ...
                                  2.71828^(8*pi*1i/8); 2.71828^(10*pi*1i/8); 2.71828^(12*pi*1i/8); 2.71828^(14*pi*1i/8)];
    
    run_test_case(initial_state_001, expected_001, 'Test Case 2: |001>');

    % Test case 3: |010> state
    initial_state_010 = [0; 0; 1; 0; 0; 0; 0; 0];  % |010>
    expected_010 = (1/sqrt(8)) * [1; (4*pi*1i/8); 2.71828^(8*pi*1i/8); 2.71828^(12*pi*1i/8); ...
                                  2.71828^(16*pi*1i/8); exp(20*pi*1i/8); 2.71828^(24*pi*1i/8); 2.71828^(28*pi*1i/8)];
    
    run_test_case(initial_state_010, expected_010, 'Test Case 3: |010>');
    
    % Test case 4: |111> state
    initial_state_111 = [0; 0; 0; 0; 0; 0; 0; 1];  % |111>
    expected_111 = (1/sqrt(8)) * [1; 2.71828^(14*pi*1i/8); 2.71828^(28*pi*1i/8); 2.71828^(42*pi*1i/8); ...
                                  2.71828^(56*pi*1i/8); 2.71828^(70*pi*1i/8); 2.71828^(84*pi*1i/8); 2.71828^(98*pi*1i/8)];
    
    run_test_case(initial_state_111, expected_111, 'Test Case 4: |111>');

end

function run_test_case(initial_state, expected_state, description)
    % Run a single test case and compare results
    fprintf('\nRunning %s...\n', description);
    
    % Call the QFT function
    result_state = qft_3qubit(initial_state);
    
    % Compare the result with the expected state
    tolerance = 1e-6;  % Allow small numerical errors
    if all(abs(result_state - expected_state) < tolerance)
        fprintf('%s PASSED!\n', description);
    else
        fprintf('%s FAILED!\n', description);
        fprintf('Expected: \n');
        disp(expected_state);
        fprintf('Got: \n');
        disp(result_state);
    end
end
