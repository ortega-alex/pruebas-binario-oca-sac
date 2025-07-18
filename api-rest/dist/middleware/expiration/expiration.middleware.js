"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ExpirationMiddleware = void 0;
const common_1 = require("@nestjs/common");
let ExpirationMiddleware = class ExpirationMiddleware {
    expirationDate = new Date('2025-08-10');
    use(_, res, next) {
        if (new Date() >= this.expirationDate)
            return res.status(common_1.HttpStatus.FORBIDDEN).json({
                message: 'El acceso a la API ha expirado',
                code: 'API_EXPIRED'
            });
        next();
    }
};
exports.ExpirationMiddleware = ExpirationMiddleware;
exports.ExpirationMiddleware = ExpirationMiddleware = __decorate([
    (0, common_1.Injectable)()
], ExpirationMiddleware);
//# sourceMappingURL=expiration.middleware.js.map