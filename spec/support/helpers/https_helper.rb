module HttpsHelper
  def with_https_enabled
    stub_const("BookmarksKeeper::HTTPS_ENABLED", "yes")
    yield
    stub_const("BookmarksKeeper::HTTPS_ENABLED", "no")
  end
end
