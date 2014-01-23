module PageScript
  module Helpers
    
    
    def pagescript
      js = <<-JS
        <script type="text/javascript" charset="utf-8">
          (function(params) {
            var function_name = "#{params[:controller]}##{params[:action]}";
            if (typeof this[function_name] == "function") { this[function_name].call(this, params); }
          }).call(window, #{pagescript_params.to_json})
        </script>
      JS
      js.html_safe
    end
    
    
    def pagescript_params(params = {})
      @pagescript_params ||= {}
      
      params.each do |k, v|
        @pagescript_params[k] = v
      end
      
      @pagescript_params
    end
    
    
    ActiveSupport.on_load :action_controller do
      helper_method :pagescript, :pagescript_params
    end
    
  end
end
