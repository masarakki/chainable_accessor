# frozen_string_literal: true

require_relative 'chainable_accessor/version'

module ChainableAccessor
  def chainable_accessor(*attributes)
    mod = Module.new do
      attributes.each do |name|
        define_method name do |val = nil|
          return super() unless val

          tap { |x| x.send("#{name}=", val) }
        end
      end
    end
    prepend(mod)
  end
end
