# Clase process
class Proceso
  attr_reader :id, :parent_id, :name, :memory
  def initialize(id, parent_id, name, memory)
    @id = id
    @parent_id = parent_id
    @name = name
    @memory = memory
  end

  def to_s
    "#{@name}, #{@id}, #{@parent_id}, #{@memory}"
  end

  def <=>(other)
    @memory <=> other.memory
  end
end
