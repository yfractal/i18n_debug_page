require "i18n_debug_page/engine"
require "i18n_debug_page/monitor"

module I18nDebugPage
  def recollect_i18n_debug_logs
    I18nDebugPage::Monitor.i18n_debug_logs = []
  end

  class << self
    def included(base)
      base.send(:before_action, :recollect_i18n_debug_logs)
    end

    def i18n_debug_logs
      I18nDebugPage::Monitor.i18n_debug_logs
    end
  end
end
