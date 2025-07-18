"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.envs = void 0;
require("dotenv/config");
const joi = require("joi");
const envsSchema = joi
    .object({
    MONGO_URI: joi.string().required()
})
    .unknown();
const { error, value } = envsSchema.validate(process.env);
if (error) {
    throw new Error(`Config validation error: ${error.message}`);
}
const envVars = value;
exports.envs = {
    MONGO_URI: envVars.MONGO_URI || 'mongodb://192.168.5.3:27017/centralizador'
};
//# sourceMappingURL=envs.js.map