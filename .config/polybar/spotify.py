#!/usr/bin/env python3

import dbus


def sanitize_song(title, truncate_at):
    if len(title) > truncate_at:
        song = title[:truncate_at] + "..."
        if "(" in song and ")" not in song:
            song += ")"
    else:
        song = title

    return song


def get_current_song():
    session_bus = dbus.SessionBus()
    spotify_bus = session_bus.get_object(
        "org.mpris.MediaPlayer2.spotify",
        "/org/mpris/MediaPlayer2"
    )

    spotify_properties = dbus.Interface(
        spotify_bus,
        "org.freedesktop.DBus.Properties"
    )

    metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
    artist = metadata["xesam:artist"][0]
    title = sanitize_song(metadata["xesam:title"], 25)

    return f"{artist}: {title}"


if __name__ == "__main__":
    try:
        print(get_current_song())
    except Exception as e:
        print("" if isinstance(e, dbus.exceptions.DBusException) else e)
