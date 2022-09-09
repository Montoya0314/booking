#Autor miguel0314@gmail.com

Feature: As user I want to perform manual tests of Booking website to check its functionality

  Background: the user Enter the booking page and has an account.

    Given the user is in the page

  @SingIn
  Scenario: Sing in into website
    When the user is in the sing in page
    And enter its registered email
    And enter ist password
    Then the user will see its session started with a welcome message

  @SignInWithSocialNetworks
  Scenario Outline: Sign in with social networks <signInOption>.
    When the user is in the sign in page
    And choose a available sign in option <signInOption>
    And enter credentials for logging
    Then the user will be able to see the sign in successful
    Examples: Sign in option available
      | signInOption |
      | Facebook     |
      | Google       |
      | Apple        |

  @SignInWithInvalidEmail
  Scenario: Sign in with an incorrect email.
    When the user is in the sign in page
    And enter an invalid email address
    Then the user will see the message: Make sure the email address you entered is correct.

  @SignInWithInvalidPassword
  Scenario: Sign in with an incorrect password.
    When the user is in the sign in page
    And enter the correct email
    And enter the wrong password
    Then the user will be able to see this message: The email and password combination entered doesn't match.

  @RegisterAccount
  Scenario: Register account in the website.
    When the user is in the register option
    And enter a valid email
    And enter a valid password
    Then the user will be able to see the register successful

  @RegisterAccountWithSocialNetworks
  Scenario Outline: Create an account with different options <signInOption>.
    When the user is in the register page
    And choose an available register option <signInOption>
    And enter correct information to logging
    Then the user will be able to see the register successful
    Examples: Register account option available
      | signInOption |
      | Facebook     |
      | Google       |
      | Apple        |

  @ListYourPropertyButton
  Scenario: Using the list your property option.
    When the user click on list your property button
    Then the user will see a new window opened redirecting to https://join.booking.com/

  @Covid19RestrictionsPage
  Scenario: Clicking the Covid 19 restrictions link.
    When the user click on the link (Get the advice you need. Check the latest COVID-19 restrictions before you travel. Learn more)
    Then the user will see a new window opened redirecting to https://www.booking.com/covid-19.html?aid=304142

  @ResetPassword
  Scenario: Reset password a account in the website.
    When the user is in the sign in page
    And enter a valid email address
    And the user click in the button forgotten your password
    And the user type its email to recover its password
    And the system should send an email to reset the password
    Then the user will receive an email to recover its password

  @SelectADifferentLanguage
  Scenario: Setting a different language.
    When the user click in the button with a flag to choose a language
    And a pop up window with will appear with available languages to choose
    And the user select a language
    Then the page will reload with the content in the selected language

  @ChangeCurrency
  Scenario: Change currency.
    When the user click in choose your currency
    And choose a available currency
    Then the user will be able to see prices in the selected currency

  @SubscribeToOffers
  Scenario: Subscribe to offers.
    When the user navigates to the end of the website
    And type its email to newsletter subscription
    And click on the button subscribe
    And the user will see a message: Thanks! We've sent you an email so you can complete your subscription
    Then the user will receive an email to confirm its subscription

  @ReadPrivacy&CookieStatement
  Scenario: Read privacy and cookies statement.
    When the user navigate to the bottom of the page
    And clicks on the Privacy & Cookie Statement
    Then the user will see the page Privacy & Cookie Statement to read it

  @DestinationsFilters
  Scenario: Using destinations we love filters.
    When the user navigate to the bottom of the page
    And clicks on the filters Regions, Cities or Places of interest
    Then the user will see a list of results based on the filter selected

  @FindATaxi
  Scenario: Find a Taxi.
    When the user selects the option Airport Taxis
    And enter the data for pickup location
    And enter the data for destination
    And enter the data for date
    And select an hour
    And select a quantity of passengers
    And click on search
    Then the user will be able to see the list of available taxis for its requirement




