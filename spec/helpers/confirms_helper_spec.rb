require 'spec_helper'

module Confirmable
  describe ConfirmsHelper do
    describe "#confirm_link_to" do
      let(:widget) { Widget.create! }

      it "should return a link with the specified text" do
        link = helper.confirm_link_to "Destroy", widget, :method => :delete
        link.should have_content "Destroy"
      end

      it "should return a link to the specified munged to point towards confirms controller" do
        link = helper.confirm_link_to "Destroy", widget, :method => :delete
        link.should have_selector "a[href='http://test.host/confirmable/delete/widgets/1']"
      end

      it "should include any other html attributes that are passed in" do
        link = helper.confirm_link_to "Destroy", widget, :method => :delete, :class => 'moof'
        link.should have_selector "a.moof"
      end
    end
    
    describe "#confirm_form_tag" do
      before do
        params[:target_url] = 'url/no/leading/slash'
        params[:method] = 'delete'
      end

      it "should return a form tag with the original url rebuilt from the params" do
        form = helper.confirm_form_tag do end

        form.should have_selector "form[action='/url/no/leading/slash']"
      end

      it "should add a hidden field for method set to the specified method" do
        form = helper.confirm_form_tag do end

        form.should have_selector "input[name='_method'][type='hidden'][value='delete']"
      end

      it "should't add the hidden field for method if none is specified, this means 'plain old POST' to rails" do
        params[:method] = nil
        form = helper.confirm_form_tag do end

        form.should_not have_selector "input[name='_method'][type='hidden']"
      end
    end
  end
end
