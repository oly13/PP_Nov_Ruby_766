require 'process_manager'
# Clase para probar mis funciones
module Main
  proc_manager = ProcessManager.new
  proc1 = Proceso.new(1, 0, 'init', 450)
  proc2 = Proceso.new(2, 1, 'chrome', 2100)
  proc3 = Proceso.new(3, 2, 'chrome', 1230)
  proc4 = Proceso.new(4, 3, 'vscode', 4500)
  proc5 = Proceso.new(5, 1, 'chrome', 3100)
  proc6 = Proceso.new(6, 2, 'chrome', 11_230)
  proc7 = Proceso.new(7, 2, 'vscode', 3500)
  proc8 = Proceso.new(8, 5, 'MSEXCEL', 2100)
  proc9 = Proceso.new(9, 6, 'chrome', 1230)
  proc10 = Proceso.new(10, 8, 'MSEXCEL', 1450)
  proc11 = Proceso.new(11, 8, 'chrome', 2100)
  proc12 = Proceso.new(12, 9, 'MSEXCEL', 1230)

  proc_manager.add_process(proc1)
  proc_manager.add_process(proc2)
  proc_manager.add_process(proc3)
  proc_manager.add_process(proc4)
  proc_manager.add_process(proc5)
  proc_manager.add_process(proc6)
  proc_manager.add_process(proc7)
  proc_manager.add_process(proc8)
  proc_manager.add_process(proc9)
  proc_manager.add_process(proc10)
  proc_manager.add_process(proc11)
  proc_manager.add_process(proc12)
  proc_manager.each_process { |proc| puts proc }
  puts '-----'
  proc_manager.each_child_process(proc1) { |proc| puts proc }
  puts '------'
  puts proc_manager.memory
  puts '------'
  puts proc_manager.memory_higher
  puts '------'
  proc_manager.each_process { |proc| puts proc }
end
