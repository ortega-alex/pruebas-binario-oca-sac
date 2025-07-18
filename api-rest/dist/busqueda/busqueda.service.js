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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.BusquedaService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const Persona_1 = require("../schemas/Persona");
let BusquedaService = class BusquedaService {
    personaModel;
    constructor(personaModel) {
        this.personaModel = personaModel;
    }
    async getFindByField(field, value) {
        return await this.personaModel.findOne({ [field]: value, lista_negra: false }).populate({
            path: 'relaciones.persona',
            select: 'nombre_completo dpi'
        });
    }
    async getFindByFieldPagination(params, page, limit) {
        const skip = (page - 1) * limit;
        const queryParams = { ...params, lista_negra: false };
        const [total, personas] = await Promise.all([
            this.personaModel.countDocuments(queryParams),
            this.personaModel
                .find(queryParams)
                .select(`
                        dpi 
                        nombre_completo 
                        fecha_nacimiento
                        genero
                        direcciones direccion_completa direccion_actual
                        telefonos numero activo
                    `)
                .skip(skip)
                .limit(limit)
                .lean()
        ]);
        const results = personas.map(persona => {
            const direccion = persona.direcciones?.find(d => d.direccion_actual) ||
                persona.direcciones?.[0] ||
                null;
            const telefono = persona.telefonos?.find(t => t.activo) ||
                persona.telefonos?.[0] ||
                null;
            return {
                dpi: persona.dpi,
                nombre_completo: persona.nombre_completo,
                genero: persona.genero,
                fecha_nacimiento: persona.fecha_nacimiento,
                direccion: direccion?.direccion_completa,
                telefono: telefono?.numero
            };
        });
        return {
            data: results,
            total,
            page,
            limit,
            has_next_page: page * limit < total
        };
    }
    async getByDni(dpi) {
        return await this.getFindByField('dpi', dpi);
    }
    async getByNit(nit) {
        return await this.getFindByField('nit', nit);
    }
    async getByIgss(igss) {
        return await this.getFindByField('igss', igss);
    }
    async getByIrtra(irtra) {
        return await this.getFindByField('irtra', irtra);
    }
    async getByCedula(cedula) {
        return await this.getFindByField('cedula', cedula);
    }
    async getByPasaporte(pasaporte) {
        return await this.getFindByField('pasaporte', pasaporte);
    }
    async getByFullName(nombre_completo, page, limit) {
        return await this.getFindByFieldPagination({
            nombre_completo: {
                $regex: nombre_completo.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
    async getByFirstNameAndLastName(primer_nombre, primer_apellido, page, limit) {
        return await this.getFindByFieldPagination({
            primer_nombre: { $regex: `^${primer_nombre}`, $options: 'i' },
            primer_apellido: {
                $regex: `^${primer_apellido}`,
                $options: 'i'
            }
        }, page, limit);
    }
    async getBySurnames(primer_apellido, segundo_apellido, page, limit) {
        return await this.getFindByFieldPagination({
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
        return await this.getFindByFieldPagination({
            'telefonos.numero': { $regex: numero, $options: 'i' }
        }, page, limit);
    }
    async getByEmail(correo) {
        return await this.getFindByField('correos.correo', correo);
    }
    async getByAddress(direccion, page, limit) {
        return await this.getFindByFieldPagination({
            'direcciones.direccion_completa': {
                $regex: direccion.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
    async getByTrabajo(razon_social, page, limit) {
        return await this.getFindByFieldPagination({
            'trabajos.razon_social': {
                $regex: razon_social.split(' ').join('.*'),
                $options: 'i'
            }
        }, page, limit);
    }
};
exports.BusquedaService = BusquedaService;
exports.BusquedaService = BusquedaService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(Persona_1.Persona.name)),
    __metadata("design:paramtypes", [mongoose_2.Model])
], BusquedaService);
//# sourceMappingURL=busqueda.service.js.map