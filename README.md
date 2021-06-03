# secure-nodejs-docker
Best practices to containerize Node.js web applications with Docker

For creating image
```javascript
docker build . -t secure-nodejs --build-arg SERVER_ENV=production
docker run -p 3000:3000 secure-nodejs
```
