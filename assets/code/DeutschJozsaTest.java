{% highlight java %}
package DeutschJozsaTest;

import java.util.Random;
import java.util.function.IntUnaryOperator;

public class Main {
    public static void main(String[] args) {
        IntUnaryOperator function;
        int constantValue = new Random().nextInt(2);
        if (args[0].equals("constant"))
            function = (x) -> constantValue;
        else
            function = (x) -> (x + constantValue) % 2;

        int n = Integer.parseInt(args[1]);
        
        int result = 0;
        for (int i = 0; i < n/2+1; ++i)
            result += function.applyAsInt(i);
        
        boolean isConstant = (result == 0 || result == n/2+1);
        String type = isConstant ? "constant" : "balanced";
        System.out.println("Function is " + type + ".");
    }
}
{% endhighlight %}
