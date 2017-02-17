require 'i18n/debug'
module I18nDebugPage
  class Monitor
    class << self
      attr_accessor :i18n_debug_logs

      I18n::Debug.on_lookup do |key, result|
        Monitor.i18n_debug_logs << { key: key, result: result }
      end

      def i18n_debug_logs
        @i18n_debug_logs ||= []
      end
    end
  end
end
