import express from "express";
import { getPsychiatrists } from "../controllers/hospitals.js";

const router = express.Router();

router.post("/psychiatrists", getPsychiatrists);

export default router;
