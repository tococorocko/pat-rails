module WebsiteVisitHandler
  def self.write_to_visit_per_day
    visits_per_day = Ahoy::Visit.all.group_by{|visit| visit.started_at.strftime("%Y-%m-%d")}.map { |k, v| [k, v.count] }.to_h

    visits_per_day.each do |date, visits|
      VisitPerDay.upsert({date: date, number_of_visits: visits}, unique_by: :date)
    end
    puts(VisitPerDay.all.map{ |visit| "#{visit.date} - #{visit.number_of_visits}" })
  end

  def self.cleanup_old_visits(num_of_months = 6)
    time = num_of_months.months.ago
    Ahoy::Visit.where("started_at < ?", time).delete_all
  end
end
