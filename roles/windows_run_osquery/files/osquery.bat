echo "osquery" > ~/LOG.TXT

::host name, os, os patch, 
osqueryi "SELECT host_name, os, os_version, os_flavor, live as status FROM upt_assets;" >> ~/LOG.TXT

::IP
osqueryi "SELECT inteface, address FROM interface_addresses;" >> ~/LOG.TXT

:: domain name
osqueryi "SELECT dns_host_name FROM interface_details;" >> ~/LOG.TXT


::sers
osqueryi "SELECT uid, username, shell FROM users;" >> ~/LOG.TXT

:: current running software // processes
osqueryi "SELECT pid, process_name, path, commandLine, state, start_time, parent_process, version_info FROM processes;" >> ~/LOG.TXT

:: processes listening
osqueryi "SELECT * FROM listening_ports ;" >> ~/LOG.TXT