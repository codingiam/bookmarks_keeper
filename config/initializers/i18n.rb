if Rails.configuration.action_view.raise_on_missing_translations
  I18n.exception_handler = proc do |exception, *_|
    raise exception
  end
end
