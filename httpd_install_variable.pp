$h = "httpd"

# Installing the httpd
package{"httpd_pack":
name => $h,
ensure => installed,
}

# Here we are creating a sample file
file {"webpage":
path => "/var/www/html/vignesh.html",
content => "this is test page",
ensure => file,
}

# Here we are starting the httpd
service {"start_httpd":
name => httpd,
ensure => running,
enable => true, # This enable => true is to make sure, this httpd is starting even after os reboot
}

notify { "Httpd is installed and started":
}
