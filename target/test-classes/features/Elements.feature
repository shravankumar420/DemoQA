Feature: Testing Elements
@Elements @TextBox
Scenario: User testing for TextBox
Given user click on "Text Box"
And user enter random 20 char into "Full Name"
And user enter random 20 char into "Email"
And user enter random 50 char into "Current Address" textarea
And user enter random 80 char into "Permanent Address" textarea
And user click on "Submit" button

@Elements @CheckBox
Scenario: User testing for CheckBox
Given user click on "Check Box"
And user click on "Home" toggle
And user click on "Downloads" toggle
And user click on "Excel File.doc"
Then assert "excelFile" is displayed
And user click on "Desktop" toggle
And user click on "Commands"
Then assert "commands" is displayed
And user click on "Documents" toggle
And user click on "WorkSpace"
Then assert "workspace" is displayed
Then assert "react" is displayed
Then assert "angular" is displayed
Then assert "veu" is displayed