module ActionHelper
  def link_to_edit(url, html_options = {})
    html_options.reverse_merge! class: ''

    link_to t('views.crud.edit_link'), url, html_options
  end

  def fab_to_edit(url: required, back_url: required)
    content_tag :div, class: 'fixed-action-btn fab-position' do
      link_to(raw('<i class="large mdi-editor-mode-edit"></i>'), url, class: 'btn-large btn-floating green') +

        content_tag(:ul) do
          content_tag :li do
            fab_to_back(back_url)
          end
        end
    end
  end

  def fab_to_save(back_url: required)
    content_tag :div, class: 'fixed-action-btn fab-position' do
      button_tag(type: :submit, class: 'btn-floating btn-large red') do
        content_tag(:i, nil, class: 'mdi-navigation-check')
      end +
        content_tag(:ul) do
          content_tag :li do
            fab_to_back(back_url)
          end
        end
    end
  end

  def fab_to_save_answer
    content_tag :div, class: 'fixed-action-btn fab-position' do
      button_tag(type: :submit, class: 'btn-floating btn-large red') do
        content_tag(:i, nil, class: 'mdi-navigation-check')
      end +
        content_tag(:ul) do
          content_tag(:li) do
            fab_to_back(:back)
          end
        end
    end
  end

  def fab_to_back(url)
    link_to raw('<i class="large mdi-navigation-arrow-back"></i>'), url, class: 'btn-floating blue'
  end

  def fab_to_new(url)
    content_tag :div, class: 'fixed-action-btn fab-position' do
      link_to raw('<i class="mdi-content-add"></i>'), url, class: 'btn-floating btn-large red'
    end.html_safe
  end

  def link_to_destroy(url, html_options = {})
    html_options.reverse_merge!(
      data: { confirm: t('views.crud.delete') },
      method: :delete,
      class: ''
    )

    link_to t('views.crud.delete_link'), url, html_options
  end

  def link_to_cancel(url, html_options = {})
    html_options.reverse_merge!(class: 'back btn btn-link')

    link_to t('crud.cancel'), url, html_options
  end

  def link_to_show(url, html_options = {})
    html_options.reverse_merge!(
      class: 'show btn btn-default glyphicon glyphicon-eye pull-right'
    )

    link_to '', url, html_options
  end
end
