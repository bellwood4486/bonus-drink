class BonusDrink
  def self.total_count_for(amount)
    bonus_sum = 0
    current_amount = amount
    while (current_amount >= 3)
      bonus, remaining = current_amount.divmod 3
      bonus_sum += bonus
      current_amount = bonus + remaining
    end
    amount + bonus_sum
  end
end
