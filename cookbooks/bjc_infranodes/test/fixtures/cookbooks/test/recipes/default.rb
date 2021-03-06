#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%w(
  chef.crt
  chef.key
  delivery.crt
  compliance.crt
  automate.crt
  public.pub
  private.pem
  infranodes-info.json
).each do |f|
  cookbook_file "/tmp/#{f}" do
    source f
    sensitive true
  end
end
