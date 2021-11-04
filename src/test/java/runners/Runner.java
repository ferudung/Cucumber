package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(

       features = "src/test/resources/features",
        glue = "stepdefinitions",
        tags = "@CH",

        dryRun=true


)


public class Runner {


}