#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

module RailsAdminAutoEnum
  class Railtie < Rails::Railtie
    initializer 'rails_admin.auto_enum' do |config|
      ActiveRecord::Base.send(:extend, RailsAdminAutoEnum::ActiveRecord::RailsAdminEnum)
    end
  end
end
