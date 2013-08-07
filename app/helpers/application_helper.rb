module ApplicationHelper
  # Only need this helper once, it will provide an interface to convert a block into a partial.
    # 1. Capture is a Rails helper which will 'capture' the output of a block into a variable
    # 2. Merge the 'body' variable into our options hash
    # 3. Render the partial with the given options hash. Just like calling the partial directly.
  def block_to_partial(partial_name, options = {}, &block)
    options.merge!(:body => capture(&block))
    render(:partial => partial_name, :locals => options)
  end
  
  # Create as many of these as you like, each should call a different partial
    # 1. Render 'shared/rounded_box' partial with the given options and block content
#  def rounded_box(title, options = {}, &block)
#    block_to_partial('shared/rounded_box', options.merge(:title => title), &block)
#  end
  def options_dropdown(title, options = {}, &block)
    if capture(&block) =~ /href/
      block_to_partial('/shared/helper/options_dropdown', options.merge(:title => title), &block)
    end
  end
  
  def split_options_dropdown(main_link, options = {}, &block)
    if capture(&block) =~ /href/
      block_to_partial('/shared/helper/split_options_dropdown', options.merge(:main_link => main_link), &block)
    else
      block = Proc.new {""}
      block_to_partial('/shared/helper/split_options_dropdown', options.merge(:main_link => main_link), &block)
    end
  end
  
  def options_bar(title, options = {}, &block)
    block_to_partial('/shared/helper/options_bar', options.merge(:title => title), &block)
  end

end
