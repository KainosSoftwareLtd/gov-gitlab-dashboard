# Dashing dashboard for Gitlab Watching
Depends on [https://github.com/KainosSoftwareLtd/gov-inspectacle](https://github.com/KainosSoftwareLtd/gov-inspectacle) for data.



## Running
### Dependencies
#### Inspectacle
In another terminal window clone [https://github.com/KainosSoftwareLtd/gov-inspectacle](https://github.com/KainosSoftwareLtd/gov-inspectacle) and set it up and running.

#### Ruby
Dashing uses ruby, and bundle to install dependencies, this is a decent guide to set it up, you just need to do the bit to install ruby.

[https://gorails.com/setup/osx/10.10-yosemite](https://gorails.com/setup/osx/10.10-yosemite)

You will also need to install bundler [http://bundler.io/](http://bundler.io/)

You may need to run the following to ensure it is working.
```
rbenv rehash
```
### Running the dashboard
From this projects root directory
```
$ bundle
```

Start the server!
```
$ dashing start
```

Point your browser at [http://localhost:3030](http://localhost:3030) and wait for info to arrive!

Check out (http://shopify.github.com/dashing)[http://shopify.github.com/dashing] for more information.
