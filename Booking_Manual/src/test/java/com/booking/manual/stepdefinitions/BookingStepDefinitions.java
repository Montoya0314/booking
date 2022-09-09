package com.booking.manual.stepdefinitions;

import io.cucumber.java.Scenario;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;

import static com.booking.manual.utils.ManualTest.validate;

public class BookingStepDefinitions {

    private Scenario scenario;

    @Before
    public void scenario(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("^(.*)$")
    public void given(String step) {
        validate(step, scenario.getName());
    }
}
