# Valheim Easy Server Join
An easy way to configure and join Valheim servers using AutoHotkey (https://www.autohotkey.com/)

- This might not work on very small screens. Feel free to send PRs

Change the following variables under Macro1
1. Change steamDir to your steam directory if different
2. Set serverIP
3. Set serverPort
4. Set serverPassword
5. Set serverDescription (optional but nice to see if managing multiple scripts)
6. Load this script into AutoHotkey and press **Alt + .** to start
7. Wait until character selection screen loads, choose your character and then click the **OK on my popup**. Do not click the Start button in the game.

An example might look like...

- serverIP := "1.1.1.1"
- serverPort := 2456
- serverPassword := "12345"
- serverDescription := "Jojoshua's World"
