{% highlight C# %}
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
{% endhighlight %}
