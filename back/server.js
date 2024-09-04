const express = require('express')
const cors = require('cors')
const routes = require('./src/routes')

//configurações de saída para o front
const app = express()
app.use(express.json())
app.use(cors())
app.use(routes)

app.listen(2000,() => {
    console.log("Servidor respondendo na porta 2000")
})