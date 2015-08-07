module NoticeManagerHelper
  def notices(timeout)
    flash.collect do |key, msg|
      message = content_tag :span, class: 'valign-wrapper' do
        concat msg
        concat content_tag(:i, '', class: "icon-toast #{alert_class_finder(key)}")
      end
      javascript_tag("toast('#{message}', #{timeout});")
    end.join.html_safe
  end

  private

  def alert_class_finder(key)
    case key
    when 'notice'
      'mdi-action-done small green-text'
    when 'alert'
      'mdi-alert-warning small yellow-text'
    end
  end
end
