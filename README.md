# Gameboy Dog Game Info

 ### Windows Set-up:

- WSL is needed.

- First, need to install rgbds and under Ubuntu this means building from source (in WSL): 
  1. `git clone https://github.com/gbdev/rgbds.git`
  2. `cd rgbds`
  3. `git checkout v0.5.1`
`sudo apt install  make  gcc pkg-config libpng-dev`
  5. `make` (optionally `make run` afterwards to install system-wide)
- Info on building rgbds from source available at: https://rgbds.gbdev.io/install/source
- In AsmR directory, `make run` to build and and run gb.gb game file.
- For debugging and VRAM visualisation, right-click gb screen $\rightarrow$ 'Other'. 

