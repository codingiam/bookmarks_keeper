Sequel.migration do
  up do
    create_table(:bookmarks) do
      primary_key :id
      String :title, text: true
      String :url, text: true, unique: true
      Time :timestamp
      FalseClass :screenshot, default: false
    end
  end

  down do
    drop_table(:bookmarks)
  end
end
