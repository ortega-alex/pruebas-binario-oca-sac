"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppModule = void 0;
const cache_manager_1 = require("@nestjs/cache-manager");
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const busqueda_module_1 = require("./busqueda/busqueda.module");
const envs_1 = require("./config/envs");
const editar_module_1 = require("./editar/editar.module");
const expiration_middleware_1 = require("./middleware/expiration/expiration.middleware");
const Persona_1 = require("./schemas/Persona");
const persona_lookup_service_1 = require("./services/persona-lookup.service");
let AppModule = class AppModule {
    configure(consumer) {
        consumer.apply(expiration_middleware_1.ExpirationMiddleware).forRoutes('*');
    }
};
exports.AppModule = AppModule;
exports.AppModule = AppModule = __decorate([
    (0, common_1.Module)({
        imports: [
            cache_manager_1.CacheModule.register({ isGlobal: true }),
            mongoose_1.MongooseModule.forRoot(envs_1.envs.MONGO_URI || 'mongodb://192.168.5.3:27017/centralizador', {
                authSource: 'admin'
            }),
            busqueda_module_1.BusquedaModule,
            editar_module_1.EditarModule,
            mongoose_1.MongooseModule.forFeature([
                { name: Persona_1.Persona.name, schema: Persona_1.PersonaSchema }
            ])
        ],
        controllers: [],
        providers: [persona_lookup_service_1.PersonaLookupService]
    })
], AppModule);
//# sourceMappingURL=app.module.js.map