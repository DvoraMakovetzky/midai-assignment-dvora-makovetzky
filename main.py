from ultralytics import YOLO
model = YOLO("yolov8n.pt")

results = model.predict("C:\\Users\\This User\\Documents\\Studies\\midconstruction\\train\\image\\IMG_4650.JPG",save=True)







