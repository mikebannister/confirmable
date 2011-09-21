module Confirmable
  module ConfirmsHelper
    def confirm_link_to(name, url_options, html_options={})
      @method = html_options.delete(:method) { |opt| 'post' }
      @confirm = html_options.delete(:confirm) #TODO: do something with the return value
      @target_url = url_for(url_options).slice(1..-1)

      link_to(name, confirm_url, html_options)
    end
    
    def confirm_url
      confirmable.confirm_url(target_url: @target_url, method: @method)
    end
    
    def confirm_form_tag(&block)
      raise ArgumentError, "Missing block" unless block_given?
      form_tag("/"+params[:target_url], :method => params[:method].try(:to_sym), &block)
    end
  end
end
