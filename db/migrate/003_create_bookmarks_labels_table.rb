Sequel.migration do
  up do
    create_join_table(bookmark_id: :bookmarks, label_id: :labels)
  end

  down do
    drop_table(:bookmarks_labels)
  end
end
