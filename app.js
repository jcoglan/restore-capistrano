process.umask(077);

var reStore = require('restore'),
    store   = new reStore.FileTree({path: __dirname + '/data'});

var server = new reStore({
  store:  store,
  http:   {port: 4180},
  allow: {
    signup: true
  }
});

server.boot();

