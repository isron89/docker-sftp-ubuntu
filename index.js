// const express = require('express'); 
  
// const app = express(); 
// const PORT = 3000; 
  
// app.get('/', (req, res)=>{ 
//     res.status(200); 
//     res.send("Welcome to root URL of Dika Server"); 
// }); 
  
// app.listen(PORT, (error) =>{ 
//     if(!error) 
//         console.log("Server is Successfully Running, and App is listening on port "+ PORT) 
//     else 
//         console.log("Error occurred, server can't start", error); 
//     } 
// ); 

http = require('node:http');
listener = function (request, response) {
   // Send the HTTP header 
   // HTTP Status: 200 : OK
   // Content Type: text/html
   response.writeHead(200, {'Content-Type': 'text/html'});
  
   // Send the response body as "Hello World"
   response.end('<h2 style="text-align: center;">Welcome to root URL of Dika Server</h2>');
};

server = http.createServer(listener);
server.listen(3000);

// Console will print the message

console.log('Server running at http://127.0.0.1:3000/');