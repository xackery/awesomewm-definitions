---@meta

---Based on https://awesomewm.org/doc/api/libraries/awesome.html

---Awesome global methods
---@class awesome
---@field version string The version of awesome.
---@field release string The release name of awesome.
---@field conffile string The configuration file which has been loaded.
---@field startup boolean True if we are still in startup, false otherwise.
---@field startup_errors string Error message for errors that occured during startup.
---@field composite_manager_running boolean True if a composite manager is running.
---@field unix_signal table Table mapping between signal numbers and signal identifiers.
---@field hostname string The hostname of the computer on which we are running.
---@field themes_path string The path where themes were installed to.
---@field icon_path string The path where icons were installed to.
awesome = {}

---register a new xproperty
---@param name string The name of the X11 property.
---@param type string|number|boolean One of “string”, “number” or “boolean”.
function awesome.register_xproperty (name, type) end

---quit awesome
---@param code? integer The exit code to return.
function awesome.quit(code) end

---Execute another application, probably a window manager, to replace awesome.
---@param cmd string The command line to execute
function awesome.exec(cmd) end

---Restart awesome
function awesome.restart() end

---Send a signal to a process
---@param pid integer Process identifier. 0 and negative values have special meaning. See man 3 kill.
---@param sig integer Signal number. See awesome.unix_signal for a list of signals.
---@return boolean true if the signal was successfully sent, else false
function awesome.kill(pid, sig) end

---Synchronize with the X11 server. This is needed in the test suite to avoid some race conditions. You should never need to use this function. 
function awesome.sync() end

---Translate a GdkPixbuf to a cairo image surface..
---@param pixbuf GdkPixBuf The pixbuf as a light user datum.
---@param path string The pixbuf origin path
---@return string The cairo surface as a light user datum.
function awesome.pixbuf_to_surface(pixbuf, path) end


---Load an image from a given path
---@param name string The file name.
---@return string image The cairo surface as a light user datum.
---@return string Error message
function awesome.load_image(name) end


---Set the preferred size for client icons.
---The closest equal or bigger size is picked if present, otherwise the closest smaller size is picked. The default is 0 pixels, ie. the smallest icon.
---@param size integer The size of the icons in pixels.
function awesome.set_preferred_icon_size(size) end


---Add a global signal.
---@param name string The event name.
---@param func function The function to call.
function awesome.connect_signal(name, func) end


---Remove a global signal.
---@param name string The event name.
---@param func function The function to call.
function awesome.disconnect_signal(name, func) end

---Emit a global signal.
---@param name string The event name.
---@vararg any The signal arguments.
function awesome.emit_signal(name, ...) end

---Spawn a program. The program will be started on the default screen.
---@param cmd table The environment to use for the spawned program. Without this the spawned process inherits awesome’s environment. (default nil)
---@param use_sn boolean Use startup-notification? (default true)
---@param stdin boolean Return a fd for stdin? (default false)
---@param stdout boolean Return a fd for stdout? (default false)
---@param stderr boolean Return a fd for stderr? (default false)
---@param exit_callback function Function to call on process exit. The function arguments will be type of exit (“exit” or “signal”) and the exit code / the signal number causing process termination. (default nil)
function awesome.spawn(cmd, use_sn, stdin, stdout, stderr, exit_callback) end


---Spawn a program. The program will be started on the default screen.
---@param cmd table The environment to use for the spawned program. Without this the spawned process inherits awesome’s environment. (default nil)
---@param use_sn? boolean Use startup-notification? (default true)
---@param stdin? boolean Return a fd for stdin? (default false)
---@param stdout? boolean Return a fd for stdout? (default false)
---@param stderr? boolean Return a fd for stderr? (default false)
---@param exit_callback function Function to call on process exit. The function arguments will be type of exit (“exit” or “signal”) and the exit code / the signal number causing process termination. (default nil)
---@return string? An error string if an error occurred.
function awesome.spawn(cmd, use_sn, stdin, stdout, stderr, exit_callback) end

---Switch keyboard layout.
---@param num integer keyboard layout number, integer from 0 to 3
function awesome.xkb_set_layout_group(num) end

---Get current layout number.
---@return integer num Current layout number, integer from 0 to 3.
function awesome.xkb_get_layout_group() end


---Get layout short names.
---@return string A string describing the current layout settings, e.g.: ‘pc+us+de:2+inet(evdev)+group(alt_shift_toggle)+ctrl(nocaps)’
function awesome.xkb_get_group_names() end


