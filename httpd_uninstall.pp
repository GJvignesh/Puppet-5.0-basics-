service {"httpd_stop":
name => "httpd",
ensure => stopped,
}



package{ "httpd_remove":
name => "httpd",
ensure => absent,
}

notify { "Httpd is uninstalled":
}
