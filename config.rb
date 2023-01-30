
node_name                "waiter"
client_key               "#{ENV['HOME']}/.chef/client_key.pem"
# chef_server_url          "https://api.opscode.com/organizations/#{ENV['ORGNAME']}"
cookbook_path            ["#{ENV['LAMBDA_TASK_ROOT']}/cookbooks"]

# Amazon AWS
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
