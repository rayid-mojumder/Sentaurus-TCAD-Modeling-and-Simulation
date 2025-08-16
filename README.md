# Sentaurus TCAD Modeling and Simulation

This repository provides **example simulation files and learning materials** for semiconductor device modeling using **Synopsys Sentaurus TCAD**. It is designed for beginners and intermediate users who want a practical workflow from structure creation to results visualization.

> Tools used: SEditor (structure) -> Doping -> Meshing -> SDevice (simulation) -> SVisual (results)

---

## Repository Structure
- **Simulation_Files/** — Example input decks for Sentaurus (2D MOS/FET modeling).
- **Slides/** — Presentation slides used in the webinar.
- **README.md** — Project overview and usage instructions.
- **LICENSE** — MIT license for open sharing.

---

## What's Inside
- Step-by-step workflow: **SEditor -> Doping -> Meshing -> SDevice -> SVisual**.
- Example simulation: **2D MOS transistor** (basic).
- Input files to tweak and extend for your own devices.
- Links to learning resources for deeper study.

---

## Prerequisites
- Access to **Synopsys Sentaurus TCAD** (licensed).  
- Basic familiarity with semiconductor device physics (Poisson + continuity, drift-diffusion).

---

## Getting Started
1) Clone this repository:
```bash
git clone https://github.com/rayid-mojumder/Sentaurus-TCAD-Modeling-and-Simulation.git
```
2) Open the project in **Sentaurus Workbench** (or run individual tools).  
3) Follow the order inside `Simulation_Files/`:
   - Build geometry in **SEditor**
   - Define **Doping**
   - Create **Meshing**
   - Run device simulation in **SDevice**
   - Visualize in **SVisual**
4) Plot key results (ID–VG, ID–VD, band diagram, carrier densities).

---

## Learning Resources
- nanoHUB (free device physics demos): https://nanohub.org/
- Purdue Semiconductor 101 (virtual cleanroom): https://www.purdue.edu/semiconductor/semi-101/
- Synopsys Sentaurus User Guide (official docs): check your licensed installation or Synopsys SolvNet.
- Upcoming YouTube playlist (5–10 hours of TCAD tutorials): *link will be added here.*

---

## Applications
- MOSFET/FET design and analysis.
- Power devices (MOSFET, IGBT, SiC/GaN variants).
- Optoelectronics (solar cells, photodiodes).
- Research, coursework, and training.

---

## Notes and Disclaimer
- This repo contains **educational examples** only.  
- No proprietary binaries or confidential process files are included.  
- Not affiliated with Synopsys; trademarks belong to their respective owners.

---

## License
This project is released under the **MIT License**. See `LICENSE` for details.

---

## Acknowledgements
Thanks to mentors, collaborators, and the TCAD community for guidance and inspiration.
