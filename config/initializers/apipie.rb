Apipie.configure do |config|
  config.default_version         = "v1"
  config.app_info                = "API with cars info and prices."
  config.app_name                = "Cars API"
  config.api_base_url            = ""
  config.doc_base_url            = "/apipie"
  config.show_all_examples       = true
  config.translate               = false
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end

