$h = "httpd"

# Just a notification
notify { "Welcome to httpd installation via Puppet" :
}

# ::processors is system defined variable {can be checked via facter command}
notify { "Your Operating system model is :  ${::processors[models][0]}":
}

# Installing the httpd
package{"httpd_pack":
name => $h,
ensure => installed,
}

# Here we are creating a sample file
file {"webpage":
path => "/var/www/html/welcome_vignesh.html",
content => " <body style='background-color:powderblue;'>\n<h1>Welcome to Puppet 5.0 installed httpd<h1> ",
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
