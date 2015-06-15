require 'active_record'

class Patches::Patch < ActiveRecord::Base
  validates :path, presence: true

  def self.path_lookup
    @paths ||= Hash[pluck(:path, :created_at)]
  end
end
