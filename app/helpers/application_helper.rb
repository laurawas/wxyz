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
    cleardiv +
    content_tag(:div, :class => 'footer') do
      "copyright 2012 WXYZ Jewelry"
    end
  end
  
  def google_analytics
    %Q!
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-26264308-1']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
    !
  end
end
