#!/bin/bash
define_repo_file(){
  local line1='[$1]'
  local line2='name=$2'
  local line3='baseurl=$3'
  local line4='gpgcheck=$4'
cat <<EOF
${line1}
${line2}
${line3}
${line4}
EOF
}
docker_ce_repo(){
  define_repo_file docker-ce docker-ce https://mirrors.aliyun.com/docker-ce/linux/centos/7/x86_64/stable/ > /etc/yum.repos.d/docker.repo
  yum makecache
}
docker_ce_repo