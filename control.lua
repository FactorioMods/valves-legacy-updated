local handler = require("__core__/lualib/event_handler")
handler.add_libraries({
    require("__valves-legacy-updated__.scripts.configuration"),
    require("__valves-legacy-updated__.scripts.builder"),
    require("__valves-legacy-updated__.scripts.shortcuts"),
    require("__valves-legacy-updated__.scripts.cursor"),
    require("__valves-legacy-updated__.scripts.rebuilder"),
})