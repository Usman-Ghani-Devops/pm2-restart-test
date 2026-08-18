module.exports = {
  apps: [
    {
      name: "my-app",
      script: "./server.js",
     // autorestart: true,
      max_restarts: 10, 
      min_uptime: 1000,
     //  restart_deplay: 5000
    }
  ]
};
