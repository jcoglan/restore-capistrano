var reStore = require('restore'),
    store   = new reStore.FileTree({path: __dirname + '/tree'});

var server = new reStore({
  store:  store,
  http:   {port: 4180},
  https:  {force: true}
});

server.boot();
