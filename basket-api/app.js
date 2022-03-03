const express = require('express')
const app = express()
const port = process.env.PORT || 3000
const plantAPIPath = process.env.PLANT_API_APTH || 'http://localhost:3001/plant'
const axios = require('axios')

const buildBasket = async () => {
    const item1 = await axios.get(`${plantAPIPath}/3`)
    const item2 = await axios.get(`${plantAPIPath}/6`)
    return [
        item1.data,
        item2.data
    ]
}

app.get('/basket', async (req, res) => {
    console.log('basket')
    try {
        const basket = await buildBasket()
        return res.json({
            items: basket,
            amount: basket.length
        })
    } catch (error) {
        console.log(error)
        return { error }
    }
})

app.listen(port, () => {
    console.log(`App listening on port ${port}`)
})