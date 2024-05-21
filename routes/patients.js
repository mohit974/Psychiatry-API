import express from "express";
import { validationResult } from "express-validator";
import multer from "multer";
import { createPatient } from "../controllers/patients.js";
import { validatePatient } from "../middleware/validatePatient.js";

const router = express.Router();

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "uploads/");
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + "-" + file.originalname);
  },
});
const upload = multer({ storage: storage });

router.post(
  "/register",
  upload.single("photo"),
  validatePatient,
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  },
  createPatient
);

export default router;
