class RyansController < ApplicationController


    def ryans_params 
        params.require(:ryan).permit(:name, dohnut_ids: [])
    end
end
