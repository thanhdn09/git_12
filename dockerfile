FROM python:3

#khai bao thu muc lam viec
WORKDIR C:\Users\k.dao.ngoc.thanh\Desktop\docker

#Copy toan bo file ma nguon va file khac vao image
COPY  . .
#cai dat flask
RUN pip install flask

#thuc hien lenh chay
CMD ["python","./vd2.py"]

#toi thay dooi o  day

#rrrr



