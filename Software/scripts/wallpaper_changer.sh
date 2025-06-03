# Path to your wallpaper folder
WALLPAPER_DIR="$HOME/Pictures/wall"

# Check if directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Error: Directory $WALLPAPER_DIR does not exist"
    exit 1
fi

# Run indefinitely
while true; do
    # Get random image from directory
    RANDOM_IMAGE=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)
    
    # Check if image was found
    if [ -n "$RANDOM_IMAGE" ]; then
        # Set wallpaper using feh
        feh --bg-scale "$RANDOM_IMAGE"
        echo "Set wallpaper: $RANDOM_IMAGE"
    else
        echo "No images found in $WALLPAPER_DIR"
    fi
    
    # Wait 5 minutes (300 seconds)
    sleep 200
done
