const express = require('express');
const app = express();
const estudiante_rutas = require('./routes/estudiantes/index');
const port = 3000;

app.use(express.json())

app.use('/api/estudiantes', estudiante_rutas);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});


//index bueno, el mero mero
