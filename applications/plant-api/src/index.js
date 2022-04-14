const express = require('express')
const app = express()
const port = process.env.PORT || 3001

const plants = require('./database.json')

app.get('/plant', (req, res) => {
    console.log('plant')
    res.json(plants)
})

app.get('/plant/:id', (req, res) => {
    console.log('plant id')
    try {
        if(req.params.id) {
            const plantById = plants.find((plant) => plant.id === Number(req.params.id) )
            if(plantById) {
                return res.json(plantById)
            }
        }
        return res.json({ message: 'item not found'})
    }
    catch (e) {
        console.log(e)
    }
})

app.listen(port, () => {
    console.log(`App listening on port ${port}`)
})