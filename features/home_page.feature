Feature: Home page

  Scenario: Viewing application's home page
    Given there's a Applicant name "Russ Waters" with email_address
    When I am on homepage
    Then I should see Applicants name, email_address, website and cover letter