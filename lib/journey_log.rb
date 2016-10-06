
require_relative 'oystercard'
require_relative 'journey'

class Journey_log

  def store_card_history
    @oystercard.card_history << @journey.current_journey
  end

end
