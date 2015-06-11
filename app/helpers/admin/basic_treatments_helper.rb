module Admin::BasicTreatmentsHelper
  def to_icon(common)
    "<i class='mdi-navigation-check small'></i>".html_safe if common
  end
end
