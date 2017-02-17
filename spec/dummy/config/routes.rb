Rails.application.routes.draw do
  get 'home/index'

  mount I18nDebugPage::Engine => "/"
end
