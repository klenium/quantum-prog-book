{% highlight haskell %}
import Quipper

deutsch_jozsa_circuit :: (([Qubit], Qubit) -> Circ ([Qubit], Qubit)) -> Circ [Bit]
deutsch_jozsa_circuit oracle = do
    top_qubits <- qinit (replicate 2 False)
    bottom_qubit <- qinit True
    
    mapUnary hadamard top_qubits
    hadamard_at bottom_qubit
    
    comment "before oracle"
    oracle (top_qubits, bottom_qubit)
    comment "after oracle"
    
    mapUnary hadamard top_qubits
    
    (top_qubits, bottom_qubit) <- measure (top_qubits, bottom_qubit)
    cdiscard bottom_qubit
    return top_qubits

main = do  
    putStrLn "Choose oracle type [constant/balanced]:"
    oracle_type <- getLine
    if oracle_type == "constant"
        then print_generic Preview (deutsch_jozsa_circuit constant_oracle_function)
        else print_generic Preview (deutsch_jozsa_circuit balanced_oracle_function)
        where
            constant_oracle_function (ins,out) = do
                return (ins, out)
            
            balanced_oracle_function ([x,y],out) = do
                qnot_at out `controlled` x
                qnot_at out `controlled` y
                return ([x,y],out)
{% endhighlight %}
