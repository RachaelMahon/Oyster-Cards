require_relative 'station'
require_relative 'journey'
require_relative 'journey_log'

class Oystercard

  attr_reader :balance, :current_journey
  attr_accessor :card_history

  MONEY_LIMIT = 90
  MINIMUM_BALANCE = 1



  def initialize
    @balance = 0
    @card_history = []
    @journey = Journey.new
  end

  def top_up(money)
    fail "Card limit is #{MONEY_LIMIT}." if money + @balance > MONEY_LIMIT
    @balance += money
  end

  def touch_in(station)
    fail "Insufficient funds for journey" if @balance < MINIMUM_BALANCE
    if @journey.in_journey == true
      deduct(@journey.fare)
    end
      @journey.start_journey(station)
  end

  def touch_out(station)
    if @journey.in_journey == false
      deduct(@journey.fare)
      @journey.finish_journey(station)
    else
      @journey.finish_journey(station)
      deduct(@journey.fare)
      @journey.create_journey
      @journey.clear_current_journey
    end
  end

private

  def deduct(fare)
    @balance -= fare
  end


end
