import cors from "cors";
import dotenv from "dotenv";
import express from "express";
import hospitalRoutes from "./routes/hospitals.js";
import patientRoutes from "./routes/patients.js";

const app = express();
dotenv.config();

app.use(express.json({ limit: "30mb", extended: true }));
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.get("/", (req, res) => {
  res.send("APP IS RUNNING");
});

app.use("/api/patients", patientRoutes);
app.use("/api/hospitals", hospitalRoutes);

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
