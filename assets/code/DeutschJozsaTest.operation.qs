namespace DeutschJozsaTest {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    
    operation DeutschJozsaTestCase(n : Int, markedElements : Int[]) : Bool {
        body {
            mutable resultArray = new Result[n];
            using (qubits = Qubit[n + 1]) {
                // Az utolsó qbit-et 1-re állítjuk.
                X(qubits[n]);
                
                ApplyToEach(H, qubits);
                
                let target = qubits[n];
                let inputs = qubits[0..n-1];
                for (idxMarked in 0..Length(markedElements)-1) {
                    // Létrehozzuk és futtatjuk a függvényt, aminek hozzárendelési szabályát előre megadjuk.
                    (ControlledOnInt(markedElements[idxMarked], ApplyToEachCA(X, _))) (inputs, [target]);
                }
                ApplyToEach(H, qubits[0..(n-1)]);
                
                for (idx in 0..(n - 1)) {
                    set resultArray[idx] = MResetZ(qubits[idx]);
                }
                Reset(qubits[n]);
            }

            // A függvény létrehozása miatt ebben a tesztben akkor konstans f, ha minden mérési
            // eredmény 0. Át lehet alakítani a függvény létrehozását úgy, hogy az eredeti formát
            // visszakaphassuk, ahol f akkor konstans, ha a mérési eredmény 1 vagy -1. Ez ugyanakkor
            // a végrehajtott műveleteket számottevően nem befolyásolja.
            return ForAll(IsResultZero, resultArray);
         }
    }
}
