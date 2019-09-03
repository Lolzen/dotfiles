#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

item: add an item into the menu

    {item => ["command", "label", "icon"]}


cat: add a category into the menu

    {cat => ["name", "label", "icon"]}


begin_cat: begin of a category

    {begin_cat => ["name", "icon"]}


end_cat: end of a category

    {end_cat => undef}


sep: horizontal line separator

    {sep => undef}
    {sep => "label"}


exit: default "Exit" action

    {exit => ["label", "icon"]}


pipe: a pipe menu entry

    {pipe => ["command", "label", "icon"]}


raw: any valid Openbox XML string

    {raw => q(xml string)},


obgenmenu: menu entry provided by obmenu-generator

    {obgenmenu => ["label", "icon"]}

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require '/home/gee/.config/obmenu-generator/config.pl';

our $SCHEMA = [
    {sep => 'Frequently used'},
    #          COMMAND             LABEL                ICON
    {item => ['dbus-launch thunar',       'File Manager',      'undef']},
    {item => ['urxvt',         'Terminal',          'undef']},
    {item => ['mpd',         'mpd',          'undef']},
    #{item => ['urxvt -geometry 110x20+910+40 -e ncmpcpp',         'ncmpcpp',          'undef']},
    #{item => ['urxvt -geometry 97x10+20+873 -e ncmpcpp',         'ncmpcpp',          'undef']},
    {item => ['urxvt -geometry 109x12+20+873 -e ncmpcpp',         'ncmpcpp',          'undef']},
    #{item => ['urxvt -geometry 110x10+910+353 -e ~/bin/mpdviz --icolor=true --scale=2 --step=8 -v spectrum -d false',         'mpdviz (spectrum)',          'undef']},
    #{item => ['urxvt -geometry 97x7+20+738 -e ~/bin/mpdviz --icolor=true --scale=2 --step=8 -v spectrum -d false',         'mpdviz (spectrum)',          'undef']},
    {item => ['urxvt -geometry 109x8+20+738 -e mpdviz --icolor=true --scale=2 --step=8 -v spectrum -d false',         'mpdviz (spectrum)',          'undef']},    
    #{item => ['urxvt -geometry 110x10+910+557 -e ~/bin/mpdviz --icolor=true --scale=1 --step=8 -v wave -d false',         'mpdviz (wave)',          'undef']},
    #{item => ['urxvt -geometry 110x10+910+557 -e ~/bin/lyriki.sh',         'lyrics',          'undef']},
    #{item => ['urxvt -geometry 100x23+1010+367 -e weechat-curses -p -s',         'weechat',          'undef']},
    {item => ['byzanz-record --duration=5 --x=0 --y=0 --width=1920 --height=1080 desktop.gif',           'byzanz gifrecord (5sec)',         'undef']},
    #{item => ['chromium', 'Web Browser',       'web-browser']},
    #{item => ['gmrun',         'Run command',       'system-run']},
    #{item => ['pidgin',        'Instant messaging', 'system-users']},
    {item => ['sh /home/gee/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh',           'TS3',         'undef']},
    {item => ['~/bin/discord',           'Discord',         'undef']},
#    {item => ['~/Discord/Discord',           'Discord (direct)',         'undef']},



    #{sep => 'Applications'},
    {sep => 'Menu'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'undef']},
    {cat => ['development', 'Development', 'undef']},
    {cat => ['education',   'Education',   'undef']},
    {cat => ['game',        'Games',       'undef']},
    {cat => ['graphics',    'Graphics',    'undef']},
    {cat => ['audiovideo',  'Multimedia',  'undef']},
    {cat => ['network',     'Network',     'undef']},
    {cat => ['office',      'Office',      'undef']},
    {cat => ['other',       'Other',       'undef']},
    {cat => ['settings',    'Settings',    'undef']},
    {cat => ['system',      'System',      'undef']},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #            COMMAND     LABEL        ICON
    #{pipe => ['obbrowser', 'Disk', 'drive-harddisk']},

    {sep       => undef},
    {obgenmenu => ['Openbox Settings', 'undef']},
    {sep       => undef},

    #{item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default Openbox's action "Exit"
    #{exit => ['Exit', 'exit']},
    #{item => ['oblogout',        'Oblogout', 'undef']},
    {item => ['gksu reboot',        'reboot', 'undef']},
    {item => ['gksu "shutdown -h now"',        'shutdown', 'undef']},
]
