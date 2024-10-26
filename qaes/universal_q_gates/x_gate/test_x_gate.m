function test_x_gate()
    % Test the apply_x_gate function with |0> and |1> as inputs
    
    % Define initial states |0> and |1>
    qubit_zero = [1; 0];
    qubit_one = [0; 1];
    
    % Test X gate on |0>
    result_zero = x_gate(qubit_zero);
    disp('Applying X gate to |0>:');
    disp(result_zero);

    % Verify the result
    if isequal(result_zero, qubit_one)
        disp('Test passed for |0> -> |1>');
    else
        disp('Test failed for |0> -> |1>');
    end

    % Test X gate on |1>
    result_one = x_gate(qubit_one);
    disp('Applying X gate to |1>:');
    disp(result_one);

    % Verify the result
    if isequal(result_one, qubit_zero)
        disp('Test passed for |1> -> |0>');
    else
        disp('Test failed for |1> -> |0>');
    end
end