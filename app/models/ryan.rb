class Ryan < ApplicationRecord
    has_many :dohnuts
    has_many :ingredients, through: :dohnuts

    def dohnut_ids=(ids)
        #Go through params[dohnut][dohnut_type][] and find or create each dohnut by type?
        # how to think about the creation of new objects here. If I have donuts of hte same type... other attributes could be different. 
        # So Ihould probably use ids.... right? I def want them to be unique as a donut cannot have many Ryans.
        # I would think I would want to pick from non assigned donuts or create a new one

        #Want to take a list of something from params and assign it to my dohnuts
        #Go through the array I get from params, shovel each dohnut object into my dohnuts
        ids.each do |dohnut_id|
            dohnut = Dohnut.find(dohnut_id)
            self.dohnuts << dohnut
        end
    end

    # Here I actually want to make sure I am getting the
    def dohnut_types
        self.dohnuts.map do |dohnut|
            dohnut.type
        end
    end
end
