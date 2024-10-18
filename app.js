const express = require('express');
const path = require('path');
const app = express();

// Set the port
const PORT = process.env.PORT || 3001;

// Set up a simple route for the home page
app.get('/', (req, res) => {
    res.send('Hello, welcome to the simple app!');
});

// Set up a static file route (for serving CSS, JS, images, etc.)
app.use(express.static(path.join(__dirname, 'public')));

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
