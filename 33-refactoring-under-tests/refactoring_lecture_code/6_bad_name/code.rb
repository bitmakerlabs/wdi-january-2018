# Calculates the total accrued amount from principal loan
def total_money_bled(original_amount, interest_rate_percentage, number_of_years)
  annual_percentage_rate = interest_rate_percentage / 100
  original_amount * (1 + annual_percentage_rate * number_of_years)
end
