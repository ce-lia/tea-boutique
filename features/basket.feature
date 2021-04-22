# Feature: Manage basket
#   In order to shop
#   As a buyer
#   I want to add articles and manage my basket

# Scenario: Create a new basket
#   Given I see an article named "Green Tea"
#   When I press "Add to basket"
#   Then I should have the article "Green Tea" in my basket

# Scenario: Out of stock article
#   Given I pick 2 items of the article
#   When The article only have 1 item in stock
#   Then I should have 1 item of this article in my basket
#   And I should see the message "Not in stock"

# Scenario: Saved basket
#   Given My basket have 3 articles
#   And I did not complete the purchase
#   When I visit the site
#   Then My basket should have 3 articles

# Scenario: Updated basket
#   Given My basket have 3 items of the same article
#   When I remove one item of this article
#   Then I should have 2 items of the same article
#   And The total should be recalculated
