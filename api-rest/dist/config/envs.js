"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.envs = void 0;
require("dotenv/config");
const joi = require("joi");
const envsSchema = joi
    .object({
    MONGO_URI: joi.string()
})
    .unknown();
const { error, value } = envsSchema.validate(process.env);
if (error) {
    throw new Error(`Config validation error: ${error.message}`);
}
const envVars = value || 'mongodb://192.168.5.3:27017/centralizador';
exports.envs = {
    MONGO_URI: envVars.MONGO_URI
};
//# sourceMappingURL=envs.js.map