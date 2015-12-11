module Admin::BasicTreatmentsHelper
  def to_icon(common)
    "<i class='mdi-navigation-check small'></i>".html_safe if common
  end

  def tooth_printer
    if Tooth.any_tooth? (@evolution.id)
      Tooth.from_evolution(@evolution.id).map(&:full).join(', ')
    else
      'Sem dentes associados!'
    end
  end
end
