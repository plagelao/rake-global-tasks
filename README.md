This is going to be a repository of things I do a lot.

It is based on rake global tasks, so this .rake directory should be in your user directory:

         cd ~
         ln -sf rake ~/.rake

I have started with a task to generate a new sinatra project (a really basic one). Just run:

        rake -g sinatra:create <project_name>

to create it.

The next steps are:

 * change the name of the gem set to the name of the project
 * init the git repository
 * make the first commit
