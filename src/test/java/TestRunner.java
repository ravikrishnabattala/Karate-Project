
import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run().tags("@E2E").relativeTo(getClass());
    }
}

