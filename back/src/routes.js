//dependencias pra funcionar
const express = require('express')
const router = express.Router();

const alunos = require('./controll/alunos')

//Rota(Endpoint) de teste
const teste = (req,res)=>{
    res.json("Api respondendo");
}

router.get('/',teste);
router.get('/alunos',alunos.read);

module.exports = router;