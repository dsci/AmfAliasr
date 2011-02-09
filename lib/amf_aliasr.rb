# AmfAliasr
module AmfAliasr

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods

    def amf_alias(*args)
      args.each do |meth|
        a = meth.to_s
        #puts "a is #{a} #{[a.length-1,a.length-1]}"
        meth_name = a[a.length-1,a.length-1].include?("?") ? a.chop : a
        #puts meth_name
        unless self.methods.include?(meth_name)
          define_method(meth_name.to_sym) do
              self.send(meth.to_sym)
          end
        end
        define_method("#{meth_name}=") do |value|
          # empty_body
        end
      end
    end

  end

end