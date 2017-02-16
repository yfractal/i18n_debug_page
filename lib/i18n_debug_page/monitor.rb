require 'i18n/debug'
module I18nDebugPage
  class Monitor
    class << self
      attr_accessor :i18n_debug_infos

      I18n::Debug.on_lookup do |key, result|
        Monitor.i18n_debug_infos ||= []
        Monitor.i18n_debug_infos << { key: key, result: result }
      end
    end
  end
end
