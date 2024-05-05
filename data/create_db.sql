DROP TABLE IF EXISTS auth_code;
DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS video;

CREATE TABLE auth_code (
    id TEXT PRIMARY KEY,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    total_requests INTEGER NOT NULL DEFAULT 0,
    created_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now')),
    updated_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now'))
);


CREATE TABLE player (
    steam_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    profile_url TEXT NOT NULL,
    avatar_url TEXT NOT NULL,
    is_banned BOOLEAN NOT NULL DEFAULT FALSE,
    created_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now')),
    updated_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now'))
);

CREATE TABLE video (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT NOT NULL,
    player_id TEXT NOT NULL,
    created_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now')),
    updated_at INTEGER(4) NOT NULL DEFAULT (unixepoch('now')),
    CONSTRAINT FK_video_player FOREIGN KEY (player_id) REFERENCES player(steam_id)
);
