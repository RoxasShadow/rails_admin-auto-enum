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
  module ActiveRecord
    module RailsAdminEnum
      def enum(definitions)
        super

        definitions.each do |name, values|
          define_method("#{name}_enum") { self.class.send(name.to_s.pluralize).to_a }

          define_method("#{name}=") do |value|
            super value.kind_of?(String) && value.to_i.to_s == value ? value.to_i : value
          end
        end
      end
    end
  end
end
