import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.core.TagResults;


public class ParallelTestRunner {
    public static void main(String[] args) {
        Results results = Runner.path("classpath:features").outputCucumberJson(true).parallel(5);
        System.out.println("Total Tests: " + results.getFeaturesTotal());
        System.out.println("Passed: " + results.getScenariosPassed());
        System.out.println("Failed: " + results.getScenariosFailed());

        results.getFeatureResults().forEach(featureResult -> {
            System.out.println("\nFeature: " + featureResult.getFeature().getResource().getFileNameWithoutExtension());

             featureResult.printStats();
            // Use Stream and forEach to iterate through scenario results
            featureResult.getScenarioResults().forEach(scenarioResult -> {
                System.out.println("  Scenario: " + scenarioResult.getScenario().getName());
                System.out.println("  Tags: " + scenarioResult.getScenario().getTags());
                System.out.println("  Status: " + (scenarioResult.isFailed() ? "FAILED ❌" : "PASSED ✅"));
            });
        });

        TagResults tagResults = new TagResults();
        System.out.println(tagResults.toKarateJson());
    }
}
