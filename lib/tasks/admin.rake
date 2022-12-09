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

  desc "Cleanup old visits from Ahoy::Visit"
  task cleanup_visits: :environment do
    puts "--- Start ---"
    puts "Cleaning up old visits from Ahoy::Visit..."
    puts "But first let's save the visits to VisitPerDay..."
    WebsiteVisitHandler.write_to_visit_per_day
    puts "Now we can delete visits from Ahoy::Visit, keeping last 6 months..."
    WebsiteVisitHandler.cleanup_old_visits
    puts "--- Done! ---"
  end
end
