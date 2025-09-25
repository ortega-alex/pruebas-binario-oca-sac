"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.BusquedaService = void 0;
const common_1 = require("@nestjs/common");
const persona_lookup_service_1 = require("../services/persona-lookup.service");
const utilities_1 = require("../utilities");
let BusquedaService = class BusquedaService {
    personaLookupService;
    TIMEOUT = 1000 * 10 * 60;
    constructor(personaLookupService) {
        this.personaLookupService = personaLookupService;
    }
    async getByDni(dpi) {
        return await this.personaLookupService.getFindByField('dpi', dpi);
    }
    async getByNit(nit) {
        return await this.personaLookupService.getFindByField('nit', nit);
    }
    async getByIgss(igss) {
        return await this.personaLookupService.getFindByField('igss', igss);
    }
    async getByIrtra(irtra) {
        return await this.personaLookupService.getFindByField('irtra', irtra);
    }
    async getByCedula(cedula, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                cedula: {
                    $regex: `^${cedula.replace(/-/g, ' ').split(' ').join('.*')}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByPasaporte(pasaporte) {
        return await this.personaLookupService.getFindByField('pasaporte', pasaporte);
    }
    async getByFullName(nombre_completo, page, limit) {
        const normalizado = (0, utilities_1.normalizarYTokenizar)(nombre_completo);
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                nombre_tokens: {
                    $all: normalizado
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByFirstNameAndLastName(primer_nombre, primer_apellido, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                primer_nombre: { $regex: `^${primer_nombre}` },
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getBySurnames(primer_apellido, segundo_apellido, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                },
                segundo_apellido: {
                    $regex: `^${segundo_apellido}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByMarriedName(apellido_casada, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                apellido_casada: {
                    $regex: `^${apellido_casada}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByPhoneNumber(numero, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                'telefonos.numero': { $regex: `^${numero}` }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByEmail(correo, page, limit) {
        let params = {};
        if (correo.startsWith('@')) {
            params = {
                'correos.dominio': {
                    $regex: `^${correo.split('@')[1]}`
                }
            };
        }
        else {
            params = {
                'correos.correo': { $regex: `^${correo}` }
            };
        }
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination(params, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByAddress(direccion, page, limit) {
        const normalizado = (0, utilities_1.normalizarYTokenizar)(direccion);
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({ 'direcciones.direccion_tokens': { $all: normalizado } }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByTrabajo(razon_social, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                'trabajos.razon_social': {
                    $regex: `^${razon_social.split(' ').join('.*')}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getByLastNameAndAddress(primer_apellido, direccion, page, limit) {
        const normalizado = (0, utilities_1.normalizarYTokenizar)(direccion);
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                'direcciones.direccion_tokens': { $all: normalizado },
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getBySecondSurnameAndAddress(segundo_apellido, direccion, page, limit) {
        const normalizado = (0, utilities_1.normalizarYTokenizar)(direccion);
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                'direcciones.direccion_tokens': { $all: normalizado },
                segundo_apellido: {
                    $regex: `^${segundo_apellido}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getBySurnameAndAddress(primer_apellido, segundo_apellido, direccion, page, limit) {
        const normalizado = (0, utilities_1.normalizarYTokenizar)(direccion);
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                'direcciones.direccion_tokens': { $all: normalizado },
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                },
                segundo_apellido: {
                    $regex: `^${segundo_apellido}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getLastNameAndMunicipality(primer_apellido, municipio, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                },
                'direcciones.municipio': {
                    $regex: `^${municipio.split(' ').join('.*')}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
    async getLastNameAndWork(primer_apellido, razon_social, page, limit) {
        return await Promise.race([
            this.personaLookupService.getFindByFieldPagination({
                primer_apellido: {
                    $regex: `^${primer_apellido}`
                },
                'empresa.razon_social': {
                    $regex: `^${razon_social.split(' ').join('.*')}`
                }
            }, page, limit),
            new Promise((_, reject) => setTimeout(() => reject(new Error('timeout')), this.TIMEOUT))
        ]);
    }
};
exports.BusquedaService = BusquedaService;
exports.BusquedaService = BusquedaService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [persona_lookup_service_1.PersonaLookupService])
], BusquedaService);
//# sourceMappingURL=busqueda.service.js.map