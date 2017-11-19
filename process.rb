# Clase process
class Process
  attr_reader :id, :parent_id, :name, :memory
  def initialize(id, parent_id, name, memory)
    @id = id
    @parent_id = parent_id
    @name = name
    @memory = memory
  end

  def to_s
    "ID: #{@id}, ParentID: #{@parent_id}, Name: #{@name}, Memory: #{@memory}"
  end
end
