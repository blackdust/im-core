class ChatController < ApplicationController
  before_action :authenticate_user!
  
  def show
    root = OrganizationNode.find params[:oid]

    @component_name = 'ChatPage'
    @component_data = {
      organization_tree: root.tree_data_with_members
    }
  end
end