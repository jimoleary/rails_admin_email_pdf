require "rails_admin_email_pdf/engine"

module RailsAdminEmailPdf
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class EmailPdf < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :member do
          true
        end

        register_instance_option :visible? do
          bindings[:object].is_a?(Report)
        end

        register_instance_option :controller do
          Proc.new do
            redirect_to main_app.admin_report_email_path(params[:id])
          end
        end

        register_instance_option :link_icon do
          "icon-envelope"
        end
      end
    end
  end
end

