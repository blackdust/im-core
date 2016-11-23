#= require libs
#= require react-adapter
#= require antd-adapter

# utils
require 'utils/_index'

# layouts
require 'layouts/_index'

# -----------------------------

# app components
window.AppComponents = {}
register = (component, displayName=null)->
  component.displayName = displayName || component.displayName
  window.AppComponents[component.displayName] = component

# auth
register (require 'app/auth/AuthSignInPage'), 'AuthSignInPage'

# organization
register require 'app/OrganizationsTreesPage'
register require 'app/OrganizationTreePage'
register require 'app/OrganizationNodeShow'

register require 'app/organization/ListPage'
register require 'app/organization/TreeShowPage'

register (require 'app/organization/CreateUpdatePage'), 'CreateUpdatePage'

# chatroom
register require 'app/chat/ChatCharAvatar'
register require 'app/chat/ChatPageOrganizationTree'
register require 'app/chat/ChatPageChatRoom' 
register require 'app/chat/ChatPageCurrentUser'
register require 'app/chat/ChatPage'

# admin/user 
register require 'app/admin/UsersIndexPage'
register (require 'app/admin/UsersNewEditPage'), 'UsersNewEditPage'
