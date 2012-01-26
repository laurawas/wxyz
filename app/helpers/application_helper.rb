module ApplicationHelper
  def nav
    content_tag :nav, :id => 'sitenav' do
      link_to(image_tag('wxyz.png', :id => 'logo'), landing_path) +
      link_to('ABOUT', about_path) +
      link_to('COLLECTION', collection_path) +
      link_to('LOOKBOOK', lookbook_path) +
      link_to('CONTACT', new_wxyzer_path) +
      link_to('BLOG', 'http://laurawas.tumblr.com')
    end
  end
  
  def cleardiv
    content_tag :div, nil, :class => 'clearboth'
  end
end
