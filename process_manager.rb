require './process'
# Clase que maneja varios objetos process
class ProcessManager
  def initialize
    @list_process = []
  end

  def add_process(process)
    @list_process << process
  end

  def each_process
    @list_process.each { |process| yield process }
  end

  def each_child_process(process)
    childs = @list_process.find_all { |proc| proc.parent_id == process.id }
    childs.each do |child|
      yield child
      each_child_process(child) { |proc| yield proc }
    end
  end

  def memory_higher
    @list_process.sort.reverse[0..9]
  end

  def memory
    memory = {}
    @list_process.each { |proc| add_hash(memory, proc.name, proc.memory) }
    memory
  end

  private

  def add_hash(hash, key, value)
    hash.include?(key) ? hash[key] += value : hash[key] = value
  end
end
