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
let BusquedaService = class BusquedaService {
    personaLookupService;
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
    async getByCedula(cedula) {
        return await this.personaLookupService.getFindByField('cedula', cedula);
    }
    async getByPasaporte(pasaporte) {
        return await this.personaLookupService.getFindByField('pasaporte', pasaporte);
    }
    async getByFullName(nombre_completo, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            nombre_completo: {
                $regex: nombre_completo.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
    async getByFirstNameAndLastName(primer_nombre, primer_apellido, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            primer_nombre: { $regex: `^${primer_nombre}`, $options: 'i' },
            primer_apellido: {
                $regex: `^${primer_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
    async getBySurnames(primer_apellido, segundo_apellido, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            primer_apellido: {
                $regex: `^${primer_apellido}`,
                $options: 'i'
            },
            segundo_apellido: {
                $regex: `^${segundo_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
    async getByPhoneNumber(numero, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'telefonos.numero': { $regex: `^${numero}`, $options: 'i' }
        }, page, limit);
    }
    async getByEmail(correo, page, limit) {
        let params = {};
        if (correo.startsWith('@')) {
            params = {
                'correos.dominio': {
                    $regex: `^${correo.split('@')[1]}`,
                    $options: 'i'
                }
            };
        }
        else {
            params = {
                'correos.correo': { $regex: `^${correo}`, $options: 'i' }
            };
        }
        return await this.personaLookupService.getFindByFieldPagination(params, page, limit);
    }
    async getByAddress(direccion, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'direcciones.direccion_completa': {
                $regex: direccion.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
    async getByTrabajo(razon_social, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'trabajos.razon_social': {
                $regex: razon_social.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
    async getByLastNameAndAddress(primer_apellido, direccion, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'direcciones.direccion_completa': {
                $regex: direccion.split(' ').join('.*'),
                $options: 'i'
            },
            primer_apellido: {
                $regex: `^${primer_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
    async getBySecondSurnameAndAddress(segundo_apellido, direccion, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'direcciones.direccion_completa': {
                $regex: direccion.split(' ').join('.*'),
                $options: 'i'
            },
            segundo_apellido: {
                $regex: `^${segundo_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
    async getBySurnameAndAddress(primer_apellido, segundo_apellido, direccion, page, limit) {
        return await this.personaLookupService.getFindByFieldPagination({
            'direcciones.direccion_completa': {
                $regex: direccion.split(' ').join('.*'),
                $options: 'i'
            },
            primer_apellido: {
                $regex: `^${primer_apellido}`,
                $options: 'i'
            },
            segundo_apellido: {
                $regex: `^${segundo_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
};
exports.BusquedaService = BusquedaService;
exports.BusquedaService = BusquedaService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [persona_lookup_service_1.PersonaLookupService])
], BusquedaService);
//# sourceMappingURL=busqueda.service.js.map