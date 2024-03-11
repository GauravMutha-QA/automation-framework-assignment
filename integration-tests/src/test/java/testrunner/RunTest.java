package testrunner;

import io.cucumber.testng.*;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.*;

// Uncomment @RunWith if you are using Junit to run Test
// @RunWith(Cucumber.class)
@CucumberOptions(
    plugin = {
      "pretty",
      "html:test-output/cucumber/html",
      "junit:test-output/cucumber/cucumber_reports",
      "json:test-output/cucumber/cucumber.json",
      "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"
    },
    features = {"src//test//java//features"},
    glue = {"stepdefinition"},
    tags = "@TestAPI")
@Test
public class RunTest extends AbstractTestNGCucumberTests {}
