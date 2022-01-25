import { Router } from "express";
const router = Router();

import {
    getAll,
    getOne,
    createRes,
    // updateRes,
    // deleteRes
} from "../controllers/results.controller";

router.get("/results", getAll);
router.get("/results/:id", getOne);
router.post("/results", createRes);
// router.put("/results/:id", updateRes);
// router.delete("/results/:id", deleteRes);

export default router;
