# class Session < ApplicationRecord
#
#   # Deletes sessions after a length of time
#   def self.sweep(time)
#     if time.is_a?(String)
#       time = time.split.inject { |count, unit| count.to_i.send(unit) }
#     end
#
#     # "updated_at < '#{time.ago.to_s(:db)}'"
#     #
#     # if self.updated_at <
#
#     self.destroy
#   end
#
# end
