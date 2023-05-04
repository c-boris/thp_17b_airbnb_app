class Strolls < ActiveRecord::Base
  belongs_to :dog
  belongs_to :dogsitter
end