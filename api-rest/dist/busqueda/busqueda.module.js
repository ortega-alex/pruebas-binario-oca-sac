"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.BusquedaModule = void 0;
const common_1 = require("@nestjs/common");
const busqueda_service_1 = require("./busqueda.service");
const busqueda_controller_1 = require("./busqueda.controller");
const mongoose_1 = require("@nestjs/mongoose");
const Persona_1 = require("../schemas/Persona");
const persona_lookup_service_1 = require("../services/persona-lookup.service");
let BusquedaModule = class BusquedaModule {
};
exports.BusquedaModule = BusquedaModule;
exports.BusquedaModule = BusquedaModule = __decorate([
    (0, common_1.Module)({
        imports: [
            mongoose_1.MongooseModule.forFeature([
                { name: Persona_1.Persona.name, schema: Persona_1.PersonaSchema }
            ])
        ],
        controllers: [busqueda_controller_1.BusquedaController],
        providers: [busqueda_service_1.BusquedaService, persona_lookup_service_1.PersonaLookupService]
    })
], BusquedaModule);
//# sourceMappingURL=busqueda.module.js.map