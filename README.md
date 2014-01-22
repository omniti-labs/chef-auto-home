# auto_home - Set up solaris automounting of /home


## Features

Sets up solaris auto home system to automatically create home directories
on demand and then mount them.

## Recipes

* default
    * Template resource to create /etc/auto_home.
    * The autofs service is notified after creation to restart.

## Templates

    * auto_home.erb

## Key Attributes

    :auto_home => {
        # Set to false to disable cookbook (default true)
        :enabled => true,
        :base => '/export/home', # Base dir for creation of home directories
    }
