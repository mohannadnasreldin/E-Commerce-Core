import crypto from 'crypto-js';

export function encryptDES(text, key) {
    return crypto.DES.encrypt(text, key).toString();
}

export function decryptDES(text, key) {
    const bytes = crypto.DES.decrypt(text, key);
    return bytes.toString(crypto.enc.Utf8);
}
