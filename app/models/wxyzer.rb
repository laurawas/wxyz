require 'csv'

class Wxyzer < ActiveRecord::Base
  def self.all_to_csv
    data = all.map { |w| w.email }
    csv = CSV.generate do |csv|
      data.each do |e|
        csv << [e]
      end
    end
    f = File.open('./tmp/emails.csv', 'w+')
    f.write csv
    f.close
  end
end
