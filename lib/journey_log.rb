
# require_relative 'oystercard'
# require_relative 'journey'
#
# class Journey_log
#
# attr_reader :test_array
#
#   def log_journey_to_card_history
#     @oystercard.card_history << create_journey
#   end
#
#   def create_journey
#     if @journey.entry_station == nil
#       @journey.entry_station = :Incomplete_journey
#     elsif @journey.exit_station == nil
#       @journey.exit_station = :Incomplete_journey
#     end
#     @journey.current_journey = { entry_station: @journey.entry_station, exit_station: @journey.exit_station }
#   end
#
#
# end
