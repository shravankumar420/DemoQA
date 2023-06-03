Feature: Registering Demo
    @RegDem
    Scenario: User register for demo page
        Given user enter "shravan" text into "First Name"
        And user enter "Kumar" text into "Last Name"
        And user enter "Hyderabad" text into "Adress"
        Then user enter random 10 char into "Email address*"
        And user enter random 10 number into "Phone*"
        And user enter "7418529630" text into "Password"
        And user enter "7418529630" text into "CPassword"
        And user select "Java" from "Select Skills" section
        And user select "1995" from "year " section
        And user select "May" from "Month" section
        And user select "23" from " Day " section
        And user select "Vietnamese" from "Languages" lable
        When user click on " Male "
        And user select "United States of America" from "Select Country :" lable
        Then assert "Automation Demo Site" is displayed in header
        Then assert "WebTable" is displayed in header
        When user click on "Refresh" button