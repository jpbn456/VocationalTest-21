Sequel.migration do
    up do
      create_table(:outcomes) do
        primary_key   :id
        foreing_key   :carrer_id, :carrers
        foreing_key   :choices_id, :choiches
        DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
        DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
      end
    end

    down do
      drop_table(:outcomes)
    end
  end