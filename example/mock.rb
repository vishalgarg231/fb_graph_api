require 'fb_graph_api'

# configure the client
Profile = FbGraphApi::Profile.new(facebook_user_access_token)

# Profle details examples
Profile.info

# Profile picture
Profile.picture('large')


