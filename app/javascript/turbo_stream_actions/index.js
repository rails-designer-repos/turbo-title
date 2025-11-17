import { Turbo } from "@hotwired/turbo-rails"
import set_title_counter from "turbo_stream_actions/set_title_counter"
import update_favicon from "turbo_stream_actions/update_favicon"

Turbo.StreamActions.set_title_counter = set_title_counter
Turbo.StreamActions.update_favicon = update_favicon
