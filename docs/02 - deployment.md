If you want to run the app without any monitoring for code changes,

Open terminal
cd into Project directory
Build the docker image using the command:
        `devspace run build-image`
        
This will build the docker image and push it to the local registry

Now we will run the container by deploying the helm charts using this command:
        `devspace run helm-deploy`

To delete the deployment run:
        `devspace run helm-delete`
        
        
