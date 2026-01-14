# Help & About

## Purpose
This script is designed to showcase my beginnings with Lua and GameGuardian scripting. It demonstrates:
- Basic memory reading/writing
- Automation of tasks
- Scripting logic for research

## Usage
1. Load _CPMGARAGEULTIMATE.lua in GameGuardian.
2. Follow the prompts or comments inside the script.
3. Use responsibly for research and learning.

## Help
- This script has name protection and update protection heres how to patch for testing ->
- Name protection (located @line 5667) (Here name should work but if you plan to change file name, change this line and rename file accordingly.)
- detector = gg.getFile():match('[^/]+$')  
name = "_CPMGARAGEULTIMATE.lua" 

- Update protection (located @line 44) (Change Version number to current for testing)
- -- Define the expected game versions
local expectedGameVersions = { "4.9.4" } -- Add multiple versions

## Extra
- Check out my website in the README.md, this resource has a custom GG Lua IDE (coding interface) with broken down, injectable mods.
- The comments should help understand the flow of how a Lua Script is constructed.
- I reccomend starting with the skeleton template in the IDE to see how a Script is structured, and slowly add mods and personalization.
- Feel Free to reach out for any questions! (Contacts in README.md)
- Also in the templates folder of this repo, check out the gg-template.lua (full script skeleton) and the gg-snippet (script function examples).


## Links
- Game Guardian: [GameGuardian](https://gameguardian.net/)
- Lua documentation: [https://www.lua.org/manual/5.1/](https://www.lua.org/manual/5.1/)
