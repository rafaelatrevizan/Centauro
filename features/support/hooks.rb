require 'watir'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
end


After do
  page.execute_script("window.close();")
end