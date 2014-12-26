require "simple_command/version"

class Command
  include ActiveModel::Model
  include Virtus.model(strict: true)

  def call
    execute if valid?
    self
  end
end
