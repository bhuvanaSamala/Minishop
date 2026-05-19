const express = require('express')
const cors = require('cors')
const path = require('path')

const app = express()

app.use(cors())

// serve static files (css, js, images)
app.use(express.static(__dirname))

// show homepage
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'))
})

const PORT = 5000

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})