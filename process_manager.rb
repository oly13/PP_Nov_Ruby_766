require './process'
# Clase que maneja varios objetos process
class ProcessManager
  def initialize
    @list_process = []
    @names = {}
  end

  def add_process(process)
    @list_process << process
    add_diccionario(@names, process.name, process)
  end

  def each_process
    @list_process.each { |process| yield process }
  end

  def each_child_process(process)
    childs = @list_process.find_all { |proc| proc.parent_id == process.id }
    childs.each do |child|
      yield child
      # each_child_process(child) { yield }
    end
  end

  def memory_higher
    @list_process.sort.reverse[0..9]
  end

  def memory
    memory = {}
    @names.each_pair do |key, array|
      memory[key] = 0
      array.each { |proc| memory[key] += proc.memory }
    end
    memory
  end

  private

  def add_diccionario(diccionario, key, value)
    if diccionario.include?(key)
      diccionario[key] << value
    else
      diccionario[key] = [value]
    end
  end
end
