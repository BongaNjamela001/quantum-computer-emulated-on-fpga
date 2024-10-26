% Initial state |000>
qubit_state = [1; 0; 0; 0; 0; 0; 0; 0]; 

% Apply X gate to all qubits
result = x_gate_funct(qubit_state);

disp('Resulting state after applying X gate to all qubits:');
disp(result);
