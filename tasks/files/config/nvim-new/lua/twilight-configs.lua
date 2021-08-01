require("twilight").setup {
    dimming = {
        alpha = 0.25, -- amount of dimming
        -- we try to get the foreground from the highlight groups or fallback color
        color = {"Normal", "#ffffff"}
    },
    context = 10, -- amount of lines we will try to show around the current line
    -- treesitter is used to automatically expand the visible text,
    -- but you can further control the types of nodes that should always be fully expanded
    expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
        "function", "method", "table", "if_statement"
    },
    exclude = {} -- exclude these filetypes
}
