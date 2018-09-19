#! /bin/bash

grep '(fwrite|file_put_contents|system|show_source|exec|shell_exec|proc_open|passthru|set_time_limit|ini_restore|mysql_list_dbs|ini_alter|dl|pfsockopen|openlog|syslog|symlink|link|chgrp|leak|popen|escapeshellcmd|apache_child_terminate|apache_get_modules|apache_get_version|apache_getenv|apache_note|apache_setenv|virtual|mb_send_mail|eval)\s*\(' -nPR "$1"
