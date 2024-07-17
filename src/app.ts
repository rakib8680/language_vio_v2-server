import express, { Application, Request, Response } from "express";
import cors from "cors";


const app: Application = express();

// parsers
app.use(express.json());
app.use(cors({ origin: "http://localhost:3000", credentials: true }));



// routes
app.get('/', (req:Request, res:Response)=>{
    res.send({
        message: 'Welcome To Language Vio App'
    })
})




export default app;