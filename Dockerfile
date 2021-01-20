# *** 
# *** 1st Stage: Transpile TypeScript 
# *** 
FROM node:15.4.0 AS build
WORKDIR /usr/src/app
COPY package.json .
RUN npm install 
# Copy the app
COPY . ./
# RUN TypeScript build
RUN ./node_modules/typescript/bin/tsc -p ./tsconfig.json
# #

# *** 
# *** 2nd Stage: Distribute App 
# *** 
#
# Set app directory
FROM node:15.4.0 AS dist
WORKDIR /usr/src/app
#
# Copy files into working directory
COPY --from=build /usr/src/app src
COPY package.json package.json
#
# Expose the app port via docker
EXPOSE 8080

# Expose port for Postgres
EXPOSE 5432
#
# Start the App
CMD ["node", "/usr/src/app/src/www/server.js"]
