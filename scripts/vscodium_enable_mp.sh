#!/bin/bash
#Activates official marketplace for vscodium flatpak if needed
# Path to the file
FILE="$HOME/.var/app/com.vscodium.codium/config/VSCodium/product.json"

# Check if the file exists
if [ ! -f "$FILE" ]; then
  # Create the directory if it does not exist
  mkdir -p "$(dirname "$FILE")"

  # Content of the JSON file
  cat <<EOL > "$FILE"
{
   "nameShort": "Visual Studio Code",
   "nameLong": "Visual Studio Code",
   "extensionsGallery": {
     "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
     "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
     "itemUrl": "https://marketplace.visualstudio.com/items"
   }
}
EOL

  echo "File $FILE has been created."
else
  echo "File $FILE already exists."
fi
