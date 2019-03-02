#use a node base image
FROM node:7-onbuid
 	

# set a health check 
HEALTH CHECK --interval=5s \
	--timeout=5s \
	CMD curl -f http://54.226.248.103 || exit 1

#tell docker what port to expose
EXPOSE 8080	
