class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
       freebie = Freebie.create(dev: dev, item_name: item_name, value: value)
       freebies << freebie
    end

    def self.oldest_company
        order(:founding_year).first
    end
end

# company = Company.new
# dev = Dev.new
# company.give_freebie(dev, "Item Name", 100)

#Company.oldest_company
