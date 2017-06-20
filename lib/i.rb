require "i/version"

module I
  class Plugin < Vagrant.plugin("2")
    name "I development and deployment automation plugin"
  
    command "free-memory" do
      require_relative "i/command"
      Command
    end
  end
end
