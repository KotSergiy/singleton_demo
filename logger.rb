require 'singleton'

class Logger
  include Singleton

  def initialize
    @f=File.open 'log.txt', 'a'
  end

  def log_something wat
    @f.puts wat
  end

  private_class_method :new
end
