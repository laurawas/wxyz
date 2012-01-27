module ApplicationHelper
  def nav
    content_tag :nav, :id => 'sitenav' do
      link_to(image_tag('wxyz.png', :id => 'logo'), root_url) +
      link_to('ABOUT', about_path) +
      link_to('COLLECTION', collection_path) +
      link_to('LOOKBOOK', lookbook_path) +
      link_to('CONTACT', new_wxyzer_path) +
      link_to('BLOG', 'http://wxyznyc.com')
    end
  end
  
  def cleardiv
    content_tag :div, nil, :class => 'clearboth'
  end
  
  def footer
    content_tag :div, :class => 'footer' do
      "copyright 2012 WXYZ Jewelry"
    end
  end
end
