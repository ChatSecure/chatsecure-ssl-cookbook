#
# Cookbook Name:: chatsecure_ssl
# Attributes:: default
#
# Copyright 2014, ChatSecure
#
# MIT License
#

default['chatsecure_ssl']['ssl_databag_name']       = "ssl"
default['chatsecure_ssl']['ssl_databag_certs_item']     = "certs"
default['chatsecure_ssl']['ssl_databag_keys_item'] = "keys"
default['chatsecure_ssl']['ssl_dir']                = "/srv/ssl/"
default['chatsecure_ssl']['ssl_cert']           = "chatsecure-bundle.crt"
default['chatsecure_ssl']['ssl_key']            = "chatsecure.key"