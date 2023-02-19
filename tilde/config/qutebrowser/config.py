config.load_autoconfig(False)

c.scrolling.smooth = True
c.session.lazy_restore = True
c.downloads.location.directory = '/home/moonglum/Downloads/'

c.tabs.show = "multiple"
c.tabs.tabs_are_windows = True

config.bind(',f', 'hint links spawn firefox {hint-url}')
