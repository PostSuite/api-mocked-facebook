FROM node:20-alpine

WORKDIR /app
RUN npm install -g @mockoon/cli
COPY . /app/
EXPOSE 3000

CMD ["mockoon-cli", "start", "--data", "/app/facebook-mock-api.json", "--port", "3000"]
