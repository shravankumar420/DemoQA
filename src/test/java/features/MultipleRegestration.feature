Feature: multiple language regestration
    @Multi
    Scenario Outline: multiple language regestration
        Given user enter "Pulka" text into "First Name"
        And user enter "Duri" text into "Last Name"
        And user enter "America" text into "Adress"
        Then user enter random 2 char into "Email address*"
        And user enter random 5 number into "Phone*"
        And user enter "7418529630" text into "Password"
        And user enter "7418529630" text into "CPassword"
        And user select <Language> from "Select Skills" sections
        And user select "1995" from "year " section
        And user select "May" from "Month" section
        And user select "23" from " Day " section
        And user select "Vietnamese" from "Languages" lable
        When user click on " Male "
        And user select "United States of America" from "Select Country :" lable
        Then assert "Automation Demo Site" is displayed in header
        Then assert "WebTable" is displayed in header
        When user click on "Refresh" button

        Examples:
            | Language           |
            | Design             |
            | Corel Word Perfect |
            | Client Support     |
            | Corel Draw         |
            | Fortran            |
            | Implementation     |
            | Java               |