# frozen_string_literal: true

ENV['NO_AUTOLOAD'] = '1'
Dir['./spec/web/*_spec.rb'].each { |f| require f }
