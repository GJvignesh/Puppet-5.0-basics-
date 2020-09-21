package{"httpd_pack":
name => "httpd",
ensure => installed,

}

file {"webpage":
path => "/var/www/html/vignesh.html",
content => "this is test page",
ensure => file,
}

service {"start_httpd":
name => httpd,
ensure => running,
enable => true, 
}

notify { "Httpd is installed and started":
}
