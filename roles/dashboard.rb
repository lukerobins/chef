name "dashboard"
description "dashboard app server"
run_list(
  "recipe[nginx]",
  "recipe[nginx::passenger]",
  "recipe[mysqld]"
)

