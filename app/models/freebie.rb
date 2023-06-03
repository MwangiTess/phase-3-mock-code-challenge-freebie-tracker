class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def print_details
      "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end
end

# freebie = Freebie.new(item_name: "Squeaky Toy", value: 10)
# company = Company.find_by(name: "Google")
# dev = Dev.find_by(name: "Rick")
# freebie.company = company
# freebie.dev = dev

# puts freebie.print_details


