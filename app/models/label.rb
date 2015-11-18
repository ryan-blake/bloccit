class Label < ActiveRecord::Base

 has_many :labelings
 belongs_to :labelable, polymorphic: true

 def self.update_labels(label_string)
# #24
   return false if label_string.blank?

# #25

   label_string.split(",").map do |label|
     Label.find_or_create_by(name: label.strip)
   end
 end
end
