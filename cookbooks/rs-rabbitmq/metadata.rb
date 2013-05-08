name             'rs-rabbitmq'
maintainer       'Rightscale, Inc.'
maintainer_email 'alexey@rightscale.com'
license          'All rights reserved'
description      'Installs/Configures rs-rabbitmq'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rabbitmq", ">= 1.8.1"

recipe            "rs-rabbitmq::default", "Install and configure RS-RabbitMQ"
#recipe            "rs-rabbitmq::cluster", "Set up RabbitMQ clustering."
#recipe            "rs-rabbitmq::plugin_management", "Manage plugins with node attributes"
#recipe            "rs-rabbitmq::virtualhost_management", "Manage virtualhost with node attributes"
#recipe            "rs-rabbitmq::user_management", "Manage users with node attributes"

attribute "rs-rabbitmq/logdir",
  :display_name => "RabbitMQ log directory",
  :description => "Path to the directory for log files.",
  :default => "/var/log/rabbitmq",
  :recipes => [ "rs-rabbitmq::default" ]

attribute "rs-rabbitmq/mnesiadir",
  :display_name => "RabbitMQ Mnesia database directory",
  :description => "Path to the directory for Mnesia database files.",
  :default => "/mnt/mnesia",
  :recipes => [ "rs-rabbitmq::default" ]

attribute "rs-rabbitmq/cluster_cookie",
  :display_name => "RabbitMQ Erlang cookie",
  :description => "Access cookie for clustering nodes.  There is no default.",
  :recipes => [ "rs-rabbitmq::default" ]

attribute "rs-rabbitmq/enabled_plugins",
  :display_name => "Enabled plugins",
  :description => "List all plugins that will be activated for RabbitMQ",
  :default => [],
  :type => "array",
  :recipes => [ "rs-rabbitmq::default" ]

attribute "rs-rabbitmq/disabled_plugins",
  :display_name => "Disabled plugins",
  :description => "List all plugins that will be deactivated for RabbitMQ",
  :default => [],
  :type => "array",
  :recipes => [ "rs-rabbitmq::default" ]
