require 'microsoft_graph_auth'

app_id = 'c75a0a4c-b1b9-4ff7-85ac-14c5f8838411'
app_secret = 'xz=2v6r7wJQ4ZbI:D[.7u-f=021XYRwV'
scopes = 'openid profile email offline_access user.read calendars.read user.read.all'

app_id = '5dcf96d2-d8ea-46b8-8c71-b0893f43ca67'
app_secret = 'xz=2v6r7wJQ4ZbI:D[.7u-f=021XYRwV'
scopes = 'openid profile email offline_access user.read calendars.read user.read.all'

app_id = '5dcf96d2-d8ea-46b8-8c71-b0893f43ca67'
app_secret = 'Ixdbe5tdK08An1GupSuzRaA@oAaB:W[:'
scopes = 'openid profile email offline_access user.read calendars.read user.read.all'

app_id = '394c6974-8737-478e-9cca-5a0f5be0c105'
app_secret = 'AsG22N76jJBxzF?PuDgpbYa?jOImsL?='
scopes = 'openid profile email offline_access user.read calendars.read user.read.all'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :microsoft_graph_auth,
           app_id,
           app_secret,
           scope: scopes
end

#https://login.microsoftonline.com/638daa32-79a0-49df-a08c-bddf725ec5a6/oauth2/authorize?client_id=394c6974-8737-478e-9cca-5a0f5be0c105&redirect_uri=http%3A%2F%2Flocalhost%3A3000&response_type=code&scope=openid+profile+email+offline_access+user.read+calendars.read+user.read.all&state=31ec581733d6c32173a5539a3e35fc2fdb41dfb612012374&prompt=admin_consent&nonce=1234
#https://login.microsoftonline.com/638daa32-79a0-49df-a08c-bddf725ec5a6/oauth2/authorize?client_id=394c6974-8737-478e-9cca-5a0f5be0c105&redirect_uri=http%3A%2F%2Flocalhost%3A3000&response_type=code&state=a1304285f3cd6d0cabf8f9a3bc5b1fdded4c3b2d9d066655&prompt=admin_consent
