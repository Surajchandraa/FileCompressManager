# FileCompressManager
 
 FileCompressManager is a Bash script designed to automate file management tasks by compressing and archiving files based on specified criteria within a designated directory. This script simplifies file maintenance, optimizing storage space by intelligently managing files according to user-defined conditions.


## System Requirements:
- Linux or Unix-based system
- Bash shell environment

## Installation:
- clone the repository

```bash
    git clone https://github.com/Surajchandraa/FileCompressManager.git
    cd FileCompressManager
```

## Configuration:
- Edit ***script_config.cfg** to define:
    - **path:** Directory path where files will be managed.
    - **max_time:** Maximum time (in days) since the last access for file consideration.
    - **size:**  file size for compression (format: [number][unit] - K, M, G). files more than specified will be compressed.
    - **depth:** Depth level for file search within the directory.
    - **archive_path:** Directory path for storing compressed files.

## Usage:
- Run **compress.sh** to compress eligible files based on the specified criteria.
- Use **decompress.sh** to decompress compressed files found in the specified archive directory.

## Configuration File:
- **script_config.cfg** contains user-configurable parameters with detailed instructions for customization.

## Notes
- Ensure compatibility with your system's file structure and permissions before use.
- Error handling and logging are implemented to enhance script reliability.

## License
- This project is licensed under the MIT License
