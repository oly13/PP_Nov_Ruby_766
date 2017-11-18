module Main
    require "ProcessManager"
    require "Process"
    pm = ProcessManager.new
    p1 = Process.new(1, 0, 'init', 450)
    p2 = Process.new(2, 1, 'chrome', 2100)
    p3 = Process.new(5, 2, 'chrome', 1230)
    pm.addProcess(p1)
    pm.addProcess(p2)
    pm.addProcess(p3)
    pm.each_process(){ |p| puts p }
    puts "---"
    pm.each_child_process(p1){ |p| puts p }
    puts
    "---"
    puts pm.memory()
end