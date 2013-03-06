# coding: utf-8
  class HexagonaljsGenerator < Rails::Generators::NamedBase
  argument :components, :type => :array, :default => [], :banner => "component component"
  source_root File.expand_path("../templates", __FILE__)

  def create_hexagonaljs_files
    template "app.coffee", "app/assets/javascripts/app.coffee"
    template "use_case.coffee", "app/assets/javascripts/use_case.coffee"
    template "gui.coffee", "app/assets/javascripts/gui.coffee"
    template "glue.coffee", "app/assets/javascripts/glue.coffee"
    javascripts = [
      "handlebars-1.0.0.beta.6.js",
      "jquery-1.7.2.min.js",
      "jquery.json-2.3.min.js",
      "sugar-1.3.min.js",
      "underscore.js",
      "utils.coffee",
      "YouAreDaBomb.js"
    ]
    javascripts.each do  |name|
      copy_file "../vendor_assets/#{name}", "vendor/assets/javascripts/#{name}"
    end
    route("get '#{file_name}', :controller => :#{file_name}, :action => 'index'")
    template "controller.rb", "app/controllers/#{file_name}_controller.rb"
    empty_directory "app/views/#{file_name}"

    3.times {puts "\n"}
    puts "     All is cool."
    3.times {puts "\n"}
  end

end
