require "pagescript/version"
require "pagescript/helpers"

ActiveSupport.on_load(:action_controller) do
  include PageScript::Helpers
end