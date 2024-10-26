function test_grovers_search()
    % Test Bench for Grover's Search Algorithm MATLAB Implementation
    
    % Expected output for the test: target state |11> in binary
    expected_output = '11';
    
    % Run the grover's search function
    fprintf("Running Grover\'s Search Algorithm...\n");
    measured_output = quantum_search();
    
    % Display the measured output
    fprintf('Measured output: %s\n', measured_output);
    
    % Check if the measured output matches the expected output
    if strcmp(measured_output, expected_output)
        fprintf('Test Passed: Measured output matches expected output |%s>\n', expected_output);
    else
        fprintf('Test Failed: Expected |%s>, but got |%s>\n', expected_output, measured_output);
    end
    
end
