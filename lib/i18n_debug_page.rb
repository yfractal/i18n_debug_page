require "i18n_debug_page/engine"
require "i18n_debug_page/monitor"

module I18nDebugPage
  def recollect_i18n_debug_logs
    if session[:i18n_debug_page_should_not_recollect_logs]
      session[:i18n_debug_page_should_not_recollect_logs] = false
    else
      I18nDebugPage::Monitor.i18n_debug_logs = []
    end
  end

  def check_redirect
    if response.status == 302
      session[:i18n_debug_page_should_not_recollect_logs] = true
    end
  end

  class << self
    def included(base)
      base.send(:before_action, :recollect_i18n_debug_logs)
      base.send(:after_action, :check_redirect)
    end

    def i18n_debug_logs
      I18nDebugPage::Monitor.i18n_debug_logs
    end
  end
end
