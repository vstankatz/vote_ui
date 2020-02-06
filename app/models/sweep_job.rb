# class SweepJob
#   include SuckerPunch::Job
#
#   def perform(session)
#     signed_in = true
#     while signed_in == true
#       sleep 10
#       puts "sweeping now"
#       if ApplicationController.sweep(session) == true
#         signed_in = false
#         puts "signed out"
#       end
#     end
#   end
# end
