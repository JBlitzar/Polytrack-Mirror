#!/bin/bash

# Base URL
base_url="https://app-polytrack.kodub.com"

# Array of file paths
files=(
    "/dist/simulation_worker.bundle.js"
    "/css/message_box_ui.css"
    "/css/customization.css"
    "/css/checkpoint_ui.css"
    "/css/debug_ui.css"
    "/css/editor.css"
    "/css/editor_height_selector.css"
    "/css/editor_checkpoint_order.css"
    "/css/hint.css"
    "/css/leaderboard.css"
    "/css/loading_spinner.css"
    "/css/loading_ui.css"
    "/css/menu.css"
    "/css/nickname.css"
    "/css/settings_menu.css"
    "/css/speedometer.css"
    "/css/theme.css"
    "/css/time_announcer.css"
    "/css/timer.css"
    "/css/track_export_ui.css"
    "/css/track_info.css"
    "/css/track_selection_ui.css"
    "/css/transition_system.css"
    "/css/verifier.css"
    "/lib/ammo.js"
    "/dist/main.bundle.js"
    "/forced_square.woff2"
    "/audio/music.mp3"
    "/audio/click.flac"
    "/audio/engine.flac"
    "/audio/suspension.flac"
    "/audio/tires.flac"
    "/audio/collision.flac"
    "/audio/skidding.flac"
    "/audio/editor_edit.flac"
    "/audio/checkpoint.flac"
    "/models/car.glb"
    "/forced_square.json"
    "/models/road.glb"
    "/models/road_wide.glb"
    "/models/plane.glb"
    "/models/block.glb"
    "/models/wall_track.glb"
    "/models/pillar.glb"
    "/models/signs.glb"
    "/tracks/track1.track"
    "/tracks/track2.track"
    "/tracks/track3.track"
    "/tracks/track4.track"
    "/tracks/track5.track"
    "/tracks/track6.track"
    "/tracks/track7.track"
    "/tracks/track8.track"
    "/tracks/track9.track"
    "/tracks/track10.track"
    "/images/apply.svg"
    "/images/arrow_down.svg"
    "/images/arrow_up.svg"
    "/images/back.svg"
    "/images/cancel.svg"
    "/images/clouds.jpg"
    "/images/copy.svg"
    "/images/customize.svg"
    "/images/editor.svg"
    "/images/erase.svg"
    "/images/export.svg"
    "/images/helmet.svg"
    "/images/import.svg"
    "/images/load.svg"
    "/images/logo.svg"
    "/images/play.svg"
    "/images/quit.svg"
    "/images/random.svg"
    "/images/reset_settings.svg"
    "/images/save.svg"
    "/images/settings.svg"
    "/images/smoke.png"
    "/images/state_invalid.svg"
    "/images/state_pending.svg"
    "/images/state_verified.svg"
    "/images/test.svg"
    "/images/discord.svg"
)

# Define the target directory for downloads
target_dir="./game"

# Create the target directory if it doesn't exist
mkdir -p "$target_dir"

# Loop through the array and download each file
for file in "${files[@]}"; do
    # Create the directory structure in the target directory
    mkdir -p "$target_dir/$(dirname "$file")"
    
    # Download the file into the target directory
    curl -o "$target_dir$file" "$base_url$file"
done
