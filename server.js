require('dotenv').config();

const express = require('express');
const { createClient } = require('@supabase/supabase-js');
const ws = require('ws'); 

const app = express();
app.use(express.json());

const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: { persistSession: false },
  realtime: { transport: ws }
});

app.get('/', (req, res) => {
  res.send('API online e conectada com segurança ao Supabase!');
});

app.listen(3000, () => {
  console.log("Conectado com sucesso.");
});