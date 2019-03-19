class Dohnut < ApplicationRecord
    belongs_to :ryan
    has_many :ingredients


    def ryan_name=(name)
        #what all do I need to do here? I need to assign the .name attribute of the appropriate ryan as the owner of this dohnut 
        # and persist that info to the db. Controller should ultimately persist the data. So here, I am going to give the view form and contorller access
        # this helper 
        self.ryan = Ryan.find_or_create_by(name: name)
    end

    def ryan_name
        self.ryan ? self.ryan.name : nil
    end

end
