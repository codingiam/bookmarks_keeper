# frozen_string_literal: true

if Rails.configuration.i18n.raise_on_missing_translations
  I18n.exception_handler = proc do |exception, *_|
    raise exception
  end
end
