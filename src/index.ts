import "reflect-metadata";
import express from 'express';
import morgan from 'morgan';
import cors from 'cors'
import { createConnection } from 'typeorm'
import routes from './routes/results.routes'
const colors = require('colors');

const responseTime = require('response-time');

const app = express();

createConnection();

app.use(cors());
app.use(express.json());
app.use(morgan('dev'));
app.use(responseTime());

app.use(routes);

app.listen(process.env.PORT);
console.log(colors.bold.red(`Server running on port `), process.env.PORT);
