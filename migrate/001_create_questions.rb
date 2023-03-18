# frozen_string_literal: true

Sequel.migration do
  up do
    create_table(:questions) do
      primary_key :id
      String :text, null: false
      Integer :level, null: false
      Integer :order, null: false
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table(:questions)
  end
end
