# frozen_string_literal: true

class Question < Sequel::Model
  plugin :timestamps, update_on_create: true

  dataset_module do
    def by_risk_level(risk_level)
      where(risk_level:)
    end
  end
end
