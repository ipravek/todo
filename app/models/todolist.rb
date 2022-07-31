class Todolist < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

  def to_objects
    {
      id: id, 
      name: name,
      deleted: deleted,
      done: done
    }
  end

  private
  
  def self.active
    where deleted: false
  end
end
