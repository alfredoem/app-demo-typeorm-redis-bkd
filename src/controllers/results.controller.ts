import { Request, Response } from "express";
import { getRepository } from "typeorm";
import { Results } from "../entity/Results";
import { createClient } from 'redis';

const colors = require('colors');

export const getOne = async (req: Request, res: Response): Promise<Response> => {

    let rsts;
    const client = createClient();
    await client.connect();

    await client.get(`${req.params.id}`).then(async resp => {
        if (resp) {
            // return res.json(JSON.parse(resp));
            console.log(colors.brightRed('FR REDIS => ', colors.white(JSON.parse(resp))));
            rsts = JSON.parse(resp);
        } else {
            const data = await getRepository(Results).findOne(req.params.id);

            await client.set(`${req.params.id}`, JSON.stringify(data)).then(resp => {

                console.log(colors.brightBlue('FR MYSQL => ', resp));
                // return res.json(rsDa);
                rsts = data

            }, err => console.log("error", err));
        }
    }, err => console.log("error", err));

    return res.json(rsts)
};

export const getAll = async ( req: Request, res: Response ): Promise<Response> => {

    let rsts;
    const client = createClient();
    await client.connect();

    await client.get('results').then(async resp => {
        if (resp) {
            console.log(colors.brightRed('FR REDIS ... '));
            rsts = JSON.parse(resp);
        } else {
            const data = await getRepository(Results).find();
            await client.set('results', JSON.stringify(data)).then(async resp => {
                console.log(colors.brightMagenta('SV REDIS ... '));
                console.log(colors.brightBlue('FR MYSQL ... '));

                await client.EXPIRE('results', 20).then(resp => {
                    console.log(colors.brightMagenta('TTL ADDED ... '));
                }, err => console.log("error", err));

                rsts = data
            }, err => console.log("error", err));
        }
    }, err => console.log("error", err));

    return res.json(rsts)
};

export const createRes = async ( req: Request, res: Response ): Promise<Response> => {
    const newRs = getRepository(Results).create(req.body);
    const rs = await getRepository(Results).save(newRs);
    console.log(colors.brightCyan('CREATED!'));
    return res.json(rs);
};

// export const updateRes = async ( req: Request, res: Response ): Promise<Response> => {
//     const rsUp = await getRepository(Results).findOne(req.params.id);
//     if (rsUp) {
//         getRepository(Results).merge(rsUp, req.body);
//         const rs = await getRepository(Results).save(rsUp);
//         return res.json(rs);
//     }
//     return res.json({msg: 'Not user found'});
// };

// export const deleteRes = async (req: Request, res: Response): Promise<Response> => {
//     const rs = await getRepository(Results).delete(req.params.id);
//     return res.json(rs);
// };
