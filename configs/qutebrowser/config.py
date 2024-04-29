c.auto_save.session = True

c.bindings.commands = {
    "normal": {
        "H": "tab-prev",
        "J": "back",
        "K": "forward",
        "L": "tab-next",
        "tj": "back -t",
        "tk": "forward -t",
        "gL": "tab-move +",
        "gH": "tab-move -",
    }
}

c.completion.scrollbar.padding = 1

c.content.pdfjs = True

c.fileselect.handler = "external"
c.fileselect.folder.command = ["kitty", "-e", "ranger", "--choosedir={}"]
c.fileselect.single_file.command = ["kitty", "-e", "ranger", "--choosefile={}"]
c.fileselect.multiple_files.command = ["kitty", "-e", "ranger", "--choosefiles={}"]

c.fonts.default_family = "Hack Nerd Font"
c.fonts.default_size = "16px"
c.fonts.hints = "18px"
c.fonts.tabs.selected = "18px"
c.fonts.tabs.unselected = "18px"
c.fonts.web.size.default = 18
c.fonts.web.size.default_fixed = 16

c.hints.chars = "asdfjkl"
c.hints.uppercase = True

c.keyhint.delay = 0
c.keyhint.radius = 20

c.scrolling.bar = "always"
c.scrolling.smooth = False

c.statusbar.padding = {"bottom": 5, "left": 2, "right": 2, "top": 5}
c.statusbar.widgets = ["search_match", "keypress", "progress", "history", "url"]

c.tabs.indicator.width = 0
c.tabs.last_close = "startpage"
c.tabs.max_width = 200
c.tabs.padding = {"bottom": 6, "left": 5, "right": 5, "top": 6}
c.tabs.title.format = "{current_title}"
c.tabs.title.format_pinned = ""

c.url.start_pages = ["https://translate.google.com/", "https://start.duckduckgo.com"]

c.window.hide_decoration = True

c.zoom.default = "120%"

c.content.javascript.clipboard = "access"

config.load_autoconfig(False)
