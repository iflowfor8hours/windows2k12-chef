#
# Cookbook Name:: settings
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
template 'C:/temp/server-info.txt' do
    source 'server-info.txt.erb'
end
