To develop an application, we will deploy and run the application using devspace. To start the devspace based development environment:

Open terminal (here we will use VS Code's integrated terminal)
Run the command:
    `devspace dev`
    
This will spin up the development container and we will get the devspace prompt which is an open shell in to the application running inside the container. In the prompt we run the entry script:
   `./entry_point.sh`
    
This builds the application inside the container and monitors for changes. Any code change synced by devspace will trigger a dotnet rebuild. You can refresh the browser to see the changes.
