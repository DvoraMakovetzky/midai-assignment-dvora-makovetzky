# MID AI – Take-Home Assignment  
Dvora Makovetsky

This repository contains the complete solution for the Mid AI internship take-home assignment.  
It includes:
- ✅ Object detection using YOLOv8
- ✅ Construction specification extraction from PDF using a local LLaMA 3 model
- ✅ Fully reproducible Docker environment

---

## 🛠️ How to Build and Run

To reproduce the results of Part 1 (image annotation) and Part 2 (PDF-to-JSON extraction), run:

### On Linux / macOS:
```bash
docker build -t midai .
docker run --rm -v $(pwd)/results:/app/results midai
```

### On Windows (CMD):
```cmd
docker build -t midai .
docker run --rm -v %cd%/results:/app/results midai
```