require 'website_visit_handler'

desc "Admin tasks"

namespace :admin do
  desc "Collect visits from Ahoy::Visit and store them in visits_per_day"
  task collect_visits: :environment do
    puts "--- Start ---"
    puts "Collecting visits from Ahoy::Visit..."
    WebsiteVisitHandler.write_to_visit_per_day
    puts "--- Done! ---"
  end

  desc "Cleanup old visits from Ahoy::Visit ENV['MONTHS'] to keep"
  task cleanup_visits: :environment do
    puts "--- Start ---"
    puts "Cleaning up old visits from Ahoy::Visit..."
    puts "But first let's save the visits to VisitPerDay..."
    num_of_months = ENV["MONTHS"] || 3
    WebsiteVisitHandler.write_to_visit_per_day
    puts "Now we can delete visits from Ahoy::Visit, keeping last #{num_of_months} months..."
    WebsiteVisitHandler.cleanup_old_visits(num_of_months.to_i)
    puts "--- Done! ---"
  end
end
