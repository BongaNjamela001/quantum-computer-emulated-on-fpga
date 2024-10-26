function amplitude_squared = generateQuantumProbabilities(n)
    
    % The total number of possible states for n qubits is 2^n
    num_states = 2^n;
    
    % Generate the random values using the pseudorandom generator
    random_values = randn(1, num_states);
    
    % Take the absolute values to ensure non-negative probabilities
    abs_values = abs(random_values);
    
    % Normalize the values to make them valid probabilities (sum to 1)
    amplitude_squared = abs_values / sum(abs_values);
    
    % Display the probabilities
    disp('Generated Quantum State Probabilities:');
    disp(amplitude_squared);
end