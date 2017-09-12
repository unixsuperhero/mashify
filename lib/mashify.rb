#!/usr/bin/env ruby

class Mashify
  def self.mix(h)
    h.instance_eval{
      h.keys.each{|k|
        Mashify.mix(h[k]) if h[k].is_a?(Hash)
        next if h.respond_to?(k.to_sym) || h.respond_to?((k.to_s.concat(?=)).to_sym)
        define_singleton_method(k.to_sym) {
          h[k]
        }

        define_singleton_method([k,'='].map(&:to_s).join.to_sym) {|val|
          h[k] = val
        }
      }
    }
  end
end

