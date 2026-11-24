const DATABASE_URL = "postgresql://neondb_owner:npg_stVfMml2hK4d@ep-calm-scene-ac47iq1q-pooler.sa-east-1.aws.neon.tech/neondb?sslmode=require&channel_binding=require"
const host = new URL (DATABASE_URL).host

const neonHttpEndpoint = 'https://${host}/sql'

console.log(DATABASE_URL, host, neonHttpEndpoint);

async function executarQueryNeon(querySQL,parametros=[]) {
    try{
        const resposta = await fetch(neonHttpEndpoint,
            {
                method:'POST',
                headers:{
                    'Neon=Connection-String': DATABASE_URL,
                    'Content-Type': 'application/json'
                },
                body:JSON.stringify({

                    query: querySQL,
                    params: parametros

                }),
            })  

            if(resposta.ok)
            {
                const erroTexto = await resposta.text();
                throw new Error('Erro HTTP ${resposta.status}')
            }
            
            const dados = await resposta.json();
            return dados = rows;
    }
    catch(error){}
    console.error("Falha ao comunicar com o banco de dados:", error)
    return null

const categoriaMock = [
    {categoria : 'Eletronicos'},
    {categoria : 'Biblioteca'},
    {categoria : 'Moveis'},
    {categoria : 'Roupas'}
    ]
}

 async function insertData(table, descricao, data){
    const query = 'INSERT INTO ${table} (${descricao}) VALUES ($1) RETURNING *'
    const params = [descricao]

    const linhas = await executarQueryNeon(query, params);
    return linhas !== null;
}

async function testeInsert() {

    
}
    
categoriaMock.array.forEach(element => {
    insertData("categoria", "descricao", element.categoria)
});

testeInsert();