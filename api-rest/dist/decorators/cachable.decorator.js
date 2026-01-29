"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Cachable = void 0;
const common_1 = require("@nestjs/common");
const cache_interceptor_1 = require("../interceptos/cache/cache.interceptor");
const Cachable = () => (0, common_1.applyDecorators)((0, common_1.UseInterceptors)(cache_interceptor_1.CacheInterceptor));
exports.Cachable = Cachable;
//# sourceMappingURL=cachable.decorator.js.map