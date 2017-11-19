# Clase para probar mis funciones
module Main
  require '..\process_manager'
  proc_manager = ProcessManager.new
  proc1 = Process.new(1, 0, 'init', 450)
  proc2 = Process.new(2, 1, 'chrome', 2100)
  proc3 = Process.new(5, 2, 'chrome', 1230)
  proc_manager.add_process(proc1)
  proc_manager.add_process(proc2)
  proc_manager.add_process(proc3)
  proc_manager.each_process { |proc| puts proc }
  puts '-----'
  proc_manager.each_child_process(proc1) { |proc| puts proc }
  puts '------'
  puts proc_manager.memory
end
