# ApplicationRecord is the base class for all models in the application,
# inheriting from ActiveRecord::Base. It serves as an abstract class,
# providing shared functionality to all models.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
