---@meta

--[[ 
debug::error
    A call into the Lua code aborted with an error.

    This signal is used in the example configuration, 05-awesomerc.md, to let a notification box pop up.
    Arguments:

        err Table with the error object, can be converted to a string with tostring(err).

debug::deprecation
    A deprecated Lua function was called.
    Arguments:

        hint string String with a hint on what to use instead of the deprecated functionality.
        see string or nil The name of the newer API (default nil)
        args table or nil The name of the newer API (default nil)

debug::index::miss
    An invalid key was read from an object.

    This can happen if foo in an c.foo access does not exist.
    Arguments:

        unknown1 Class?
        unknown2 Key?

debug::newindex::miss
    An invalid key was written to an object.

    This can happen if foo in an c.foo = "bar" assignment doesn’t exist.
    Arguments:

        unknown1 Class?
        unknown2 Key?
        unknown3 Value?

systray::update
    The systray should be updated.

    This signal is used in wibox.widget.systray. 
wallpaper_changed
    The wallpaper has changed.

    This signal is used for pseudo-transparency in wibox.drawable if no composite manager is running. 
xkb::map_changed
    Keyboard map has changed.

    This signal is sent after the new keymap has been loaded. It is used in awful.widget.keyboardlayout to redraw the layout. 
xkb::group_changed.
    Keyboard group has changed.

    It’s used in awful.widget.keyboardlayout to redraw the layout.
    Arguments:

        group Integer containing the changed group

refresh
    Refresh.

    This signal is emitted as a kind of idle signal in the event loop. One example usage is in gears.timer to executed delayed calls. 
startup
    Awesome is about to enter the event loop.

    This means all initialization has been done. 
exit
    Awesome is exiting / about to restart.

    This signal is emitted in the atexit handler as well when awesome restarts.
    Arguments:

        reason_restart Boolean value is true if the signal was sent because of a restart.

screen::change
    The output status of a screen has changed.
    Arguments:

        output String containing which output has changed.
        connection_state String containing the connection status of the output: It will be either “Connected”, “Disconnected” or “Unknown”.

spawn::canceled
    For some reason the application aborted startup
    Arguments:

        arg Table which only got the “id” key set

spawn::change
    When one of the fields from the spawn::initiated table changes
    Arguments:

        arg Table which describes the spawn event

spawn::completed
    An application finished starting
    Arguments:

        arg Table which only got the “id” key set

spawn::initiated
    When a new client is beginning to start
    Arguments:

        arg Table which describes the spawn event

spawn::timeout
    An application started a spawn event but didn’t start in time.
    Arguments:

        arg Table which only got the “id” key set
 ]]