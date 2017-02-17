require_dependency "i18n_debug_page/application_controller"

module I18nDebugPage
  class I18nDebugLogsController < ApplicationController
    def index
      @i18n_debug_logs = I18nDebugPage.i18n_debug_logs
    end
  end
end
