require 'orocos'
require 'readline'
include Orocos

Orocos.initialize

Orocos.run 'just_mars' do

    mars = TaskContext.get 'mars'

    mars.apply_conf_file("mars::Task.yml", ["default"])
    mars.configure
    mars.start

    Readline::readline("Press ENTER to quit") do
    end
end