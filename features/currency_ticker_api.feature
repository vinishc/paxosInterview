Feature: API call to https://api.itbit.com/v1/markets/XBTUSD/ticker

@tickerAPI
Scenario: Verify the presernce of currency pair 'XBTUSD' in the API response
    When I call the XBTUSD ticker API
    Then I verify currency pair XBTUSD is present in the API response