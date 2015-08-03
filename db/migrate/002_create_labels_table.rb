Sequel.migration do
  up do
    create_table(:labels) do
      primary_key :id
      String :name, unique: true
    end
  end

  down do
    drop_table(:labels)
  end
end
