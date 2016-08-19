require 'csv'


namespace :import do

  desc "import patients from csv"
  task patients: :environment do
    CSV.foreach("appt_data.csv", headers: true) do |row|
      Patient.create! row.to_hash
    end
  end
end
