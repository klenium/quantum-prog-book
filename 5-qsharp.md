## A Q# nyelv
> Nemrég jött ki, MS csinálja, hasonlít a C#-ra, szimulátor.

#### A Deutsch–Jozsa algoritmus leírása Q# nyelvben és tesztelése C# nyelven

_Megjegyzés:_ A példaprogram a [hivatalos Q# repository][1]-ből származik, annak egyszerűsített változata.

```C#
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace DeutschJozsaTest
{
    class Driver
    {
        static void Main(string[] args)
        {
            var sim = new QuantumSimulator(throwOnReleasingQubitsNotInZeroState: true);

            bool isConstant = new System.Random().Next(0, 2) == 0;
            System.Console.WriteLine("The function operates as " + (isConstant ? "constant" : "balanced") + ".");

            // Manuálisan megadjuk, a függvény melyik esetekben ad vissza 0-t vagy 1-et.
            var onesForConstant = new QArray<long> { 0, 1, 2, 3 };
            var onesForBalanced = new QArray<long> { 1, 2 };
            var oneValues = isConstant ? onesForConstant : onesForBalanced;
            var result = DeutschJozsaTestCase.Run(sim, 2, oneValues).Result;

            System.Console.WriteLine("Detected function as " + (result ? "constant" : "balanced") + ".");
            System.Console.ReadLine();
        }
    }
}
```

```
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
```

[1]: https://github.com/Microsoft/Quantum/tree/master/Samples/SimpleAlgorithms
