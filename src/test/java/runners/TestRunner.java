package runners;

import com.intuit.karate.Runner;
import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class TestRunner {

    @Test
    void runTests() {

        String tags = System.getProperty("tags");

        Runner.Builder runner = Runner.path("classpath:features");

        if (tags != null && !tags.isEmpty()) {
            runner.tags(tags);
        }

        Results results = runner.parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}