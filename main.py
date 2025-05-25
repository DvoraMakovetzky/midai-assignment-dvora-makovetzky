from ultralytics import YOLO
model = YOLO("yolov8n.pt")

results = model.predict("C:\\Users\\This User\\Desktop\\IMG-20241206-חחח.jpg",save=True,project="results",name=".",exist_ok=True )







