# here are the following requirements for the app:

# 1. [X] - Minimum of a `has_many` and `belongs_to` relationship
# 2. [] - full CRUD on at least 1 model
# 3. [] - Use at least 1 route outside of RESTFUL ROUTE (meaning something NOT `resources :something`
# 4. [] - Minimum have 1 custom and 1 standard validation
# 5. [] - Display error messages
# 6. [] - At least one custom method (outside of RESTFUL CRUD)


# Bonus:
#
# [] - Custom attribute setters and getters for belongs_to and has_many
# [] - Custom nested_attributes functionality
# [] - Full crud validations
# [] - Data list, collection_select, radio buttons, check box
# [] - Layouts/partials


class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
