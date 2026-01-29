"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ResponseTimeMiddleware = void 0;
const common_1 = require("@nestjs/common");
let ResponseTimeMiddleware = class ResponseTimeMiddleware {
    use(_req, res, next) {
        const startTime = Date.now();
        const originalEnd = res.end;
        res.end = function (...args) {
            const duration = Date.now() - startTime;
            res.setHeader('X-Response-Time', `${duration}ms`);
            res.setHeader('X-Response-Time-Seconds', `${duration / 1000}`);
            return originalEnd.apply(this, args);
        };
        next();
    }
};
exports.ResponseTimeMiddleware = ResponseTimeMiddleware;
exports.ResponseTimeMiddleware = ResponseTimeMiddleware = __decorate([
    (0, common_1.Injectable)()
], ResponseTimeMiddleware);
//# sourceMappingURL=response-time.middleware.js.map