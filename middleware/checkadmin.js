import query from '../Database/DB_Con.js';
import jwt from 'jsonwebtoken';
import { decryptDES } from '../utils/desEncryption.js';
const key = "secretkey";
const desKey = "encryptionkey";

const admin = async (req, res, next) => {
    try {
        let token = req.headers.authorization;


        if (!token) {
            return res.status(401).json({ admin: false, msg: "Unauthorized" });
        } else {
            const decryptedToken = decryptDES(token.split(" ")[1], desKey);
            let authUser = jwt.verify(decryptedToken, key);
            req.authUserid = authUser.user_id;
        }
        next();
    } catch (err) {
        return res.status(500).json("Admin Error");
    }
}


export default admin;