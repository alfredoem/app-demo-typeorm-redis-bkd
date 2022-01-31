"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.createRes = exports.getAll = exports.getOne = void 0;
const typeorm_1 = require("typeorm");
const Results_1 = require("../entity/Results");
const redis_1 = require("redis");
const colors = require('colors');
const getOne = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let rsts;
    const client = (0, redis_1.createClient)();
    yield client.connect();
    yield client.get(`${req.params.id}`).then((resp) => __awaiter(void 0, void 0, void 0, function* () {
        if (resp) {
            // return res.json(JSON.parse(resp));
            console.log(colors.brightRed('FR REDIS => ', colors.white(JSON.parse(resp))));
            rsts = JSON.parse(resp);
        }
        else {
            const data = yield (0, typeorm_1.getRepository)(Results_1.Results).findOne(req.params.id);
            yield client.set(`${req.params.id}`, JSON.stringify(data)).then(resp => {
                console.log(colors.brightBlue('FR MYSQL => ', resp));
                // return res.json(rsDa);
                rsts = data;
            }, err => console.log("error", err));
        }
    }), err => console.log("error", err));
    return res.json(rsts);
});
exports.getOne = getOne;
const getAll = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let rsts;
    const client = (0, redis_1.createClient)();
    yield client.connect();
    yield client.get('results').then((resp) => __awaiter(void 0, void 0, void 0, function* () {
        if (resp) {
            console.log(colors.brightRed('FR REDIS ... '));
            rsts = JSON.parse(resp);
        }
        else {
            const data = yield (0, typeorm_1.getRepository)(Results_1.Results).find();
            yield client.set('results', JSON.stringify(data)).then((resp) => __awaiter(void 0, void 0, void 0, function* () {
                console.log(colors.brightMagenta('SV REDIS ... '));
                console.log(colors.brightBlue('FR MYSQL ... '));
                yield client.EXPIRE('results', 20).then(resp => {
                    console.log(colors.brightMagenta('TTL ADDED ... '));
                }, err => console.log("error", err));
                rsts = data;
            }), err => console.log("error", err));
        }
    }), err => console.log("error", err));
    return res.json(rsts);
});
exports.getAll = getAll;
const createRes = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const newRs = (0, typeorm_1.getRepository)(Results_1.Results).create(req.body);
    const rs = yield (0, typeorm_1.getRepository)(Results_1.Results).save(newRs);
    console.log(colors.brightCyan('CREATED!'));
    return res.json(rs);
});
exports.createRes = createRes;
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
