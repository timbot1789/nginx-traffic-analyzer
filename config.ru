require "zeitwerk"
require "roda"
require "listen"
loader = Zeitwerk::Loader.new
loader.push_dir("src/")
loader.setup
listener = Listen.to('src/') do |modified, added, removed|
  # We can reload the falcon server by sending a 'SIGINT' signal
  Process.kill('INT', Process.pid) 
end
listener.start
run App.freeze.app
