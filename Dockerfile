FROM python:3.5
RUN pip install Flask==0.11.1 redis==2.10.5
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
#5eaf97cb1329858ea2f944d6ef4ece316fb9c515441505a3385c372f110c07cb
WORKDIR /app
CMD ["python", "app.py"] 
