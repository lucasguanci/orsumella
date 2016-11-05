var lessr = require('/usr/local/lib/node_modules/lessr');

lessr.watch("/usr/local/lib/node_modules/less/bin/",{
  output: "./css",
  compress: false,
  watch: ["./css/"]
});

console.log("start watching and compiling less files...");
