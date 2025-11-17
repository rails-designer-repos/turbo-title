module TurboStreamActionsHelper
  def set_title_counter(count, divider: nil)
    turbo_stream_action_tag :set_title_counter, count: count, divider: divider
  end

  def update_favicon(count)
    turbo_stream_action_tag :update_favicon, count: count
  end
end

Turbo::Streams::TagBuilder.prepend(TurboStreamActionsHelper)
