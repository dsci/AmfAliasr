# -*- encoding : utf-8 -*-
require File.join(File.dirname(__FILE__), "lib", "amf_aliasr")

ActiveRecord::Base.send(:include, AmfAliasr)
