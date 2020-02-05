class SweepJob
  include SuckerPunch::Job

  def perform(session)
    signed_in = true
    while signed_in == true
      sleep 5
      puts "sweeping now"
      if ApplicationController.sweep(session)
        signed_in = false
        puts "signed out"
      end
    end
  end
end
