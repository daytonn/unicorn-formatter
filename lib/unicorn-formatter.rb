require 'rspec/core/formatters/base_formatter'

class UnicornFormatter < RSpec::Core::Formatters::BaseFormatter

  def stop
    %x{unicornleap} unless failure_count > 0
  end

end