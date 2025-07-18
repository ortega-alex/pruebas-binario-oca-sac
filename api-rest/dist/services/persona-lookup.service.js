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
exports.PersonaLookupService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const Persona_1 = require("../schemas/Persona");
const RelacionPersona_1 = require("../schemas/RelacionPersona");
let PersonaLookupService = class PersonaLookupService {
    personaModel;
    constructor(personaModel) {
        this.personaModel = personaModel;
    }
    async getFindByField(field, value, buscar_relacion = true) {
        const persona = await this.personaModel
            .findOne({
            [field]: value,
            lista_negra: false
        })
            .populate({
            path: 'relaciones.persona',
            select: 'nombre_completo dpi'
        })
            .lean();
        if (persona && buscar_relacion && !persona.relaciones_buscadas) {
            const padres = persona.relaciones.filter(r => r.tipo_relacion === 'padre' || r.tipo_relacion === 'madre');
            const nuevasRelacionesParaPersonaActual = [];
            const hermanosYaProcesadosIds = new Set();
            hermanosYaProcesadosIds.add(persona._id.toString());
            persona.relaciones.forEach(r => {
                if ([
                    'hermano',
                    'hermana',
                    'hermanastro',
                    'hermanastra'
                ].includes(r?.tipo_relacion || '') &&
                    r.persona &&
                    r.persona._id) {
                    hermanosYaProcesadosIds.add(r.persona._id.toString());
                }
            });
            for (const relacionPadres of padres) {
                const hijosDelPadrePotenciales = await this.personaModel
                    .find({
                    'relaciones.persona': relacionPadres.persona._id,
                    _id: { $ne: persona._id },
                    lista_negra: false
                })
                    .select('dpi primer_apellido segundo_apellido genero relaciones')
                    .lean();
                for (const posibleHermano of hijosDelPadrePotenciales) {
                    const esHijoDeEstePadre = posibleHermano.relaciones?.some((rel) => ['padre', 'madre'].includes(rel.tipo_relacion));
                    if (!esHijoDeEstePadre)
                        continue;
                    if (hermanosYaProcesadosIds.has(posibleHermano._id.toString()))
                        continue;
                    let tipo_relacion_hacia_hermano;
                    const p1Ap1 = persona.primer_apellido;
                    const p1Ap2 = persona.segundo_apellido;
                    const p2Ap1 = posibleHermano.primer_apellido;
                    const p2Ap2 = posibleHermano.segundo_apellido;
                    const tieneMismoPrimerApellido = p1Ap1 && p2Ap1 && p1Ap1 === p2Ap1;
                    const tieneMismoSegundoApellido = p1Ap2 && p2Ap2 && p1Ap2 === p2Ap2;
                    if (tieneMismoPrimerApellido && tieneMismoSegundoApellido)
                        tipo_relacion_hacia_hermano =
                            !posibleHermano.genero ||
                                posibleHermano.genero === 'M'
                                ? 'hermano'
                                : 'hermana';
                    else if (tieneMismoPrimerApellido ||
                        tieneMismoSegundoApellido)
                        tipo_relacion_hacia_hermano =
                            !posibleHermano.genero ||
                                posibleHermano.genero === 'M'
                                ? 'hermanastro'
                                : 'hermanastra';
                    if (tipo_relacion_hacia_hermano) {
                        nuevasRelacionesParaPersonaActual.push({
                            persona: posibleHermano._id,
                            tipo_relacion: tipo_relacion_hacia_hermano,
                            observacion: `Relación de ${tipo_relacion_hacia_hermano} generada automáticamente`
                        });
                        hermanosYaProcesadosIds.add(posibleHermano._id.toString());
                        const relacion_logica_inversa = RelacionPersona_1.RELACION_LOGICA[tipo_relacion_hacia_hermano][!persona.genero || persona.genero === 'M'
                            ? 0
                            : 1];
                        await this.personaModel.findByIdAndUpdate(posibleHermano._id, {
                            $push: {
                                relaciones: {
                                    persona: persona._id,
                                    tipo_relacion: relacion_logica_inversa,
                                    observacion: `Relación de ${relacion_logica_inversa} creada automáticamente`
                                }
                            }
                        }, { new: true, runValidators: true });
                    }
                }
            }
            await this.personaModel.findByIdAndUpdate(persona._id, {
                $set: { relaciones_buscadas: true },
                $push: {
                    relaciones: { $each: nuevasRelacionesParaPersonaActual }
                }
            }, { new: true, runValidators: true });
            return this.getFindByField('dpi', persona.dpi, false);
        }
        if (persona?.direcciones)
            persona.direcciones = persona.direcciones.filter(d => d.activo);
        if (persona?.telefonos)
            persona.telefonos = persona.telefonos.filter(t => t.activo);
        if (persona?.correos)
            persona.correos = persona.correos.filter(c => c.activo);
        if (persona?.fotos)
            persona.fotos = persona.fotos.filter(f => f.activo);
        if (persona?.firmas)
            persona.firmas = persona.firmas.filter(f => f.activo);
        if (persona?.trabajos)
            persona.trabajos = persona.trabajos.filter(t => t.activo);
        if (persona?.detenciones)
            persona.detenciones = persona.detenciones.filter(d => d.activo);
        if (persona?.estudios)
            persona.estudios = persona.estudios.filter(e => e.activo);
        if (persona?.licencias)
            persona.licencias = persona.licencias.filter(l => l.activo);
        if (persona?.vehiculos)
            persona.vehiculos = persona.vehiculos.filter(v => v.activo);
        if (persona?.referencias)
            persona.referencias = persona.referencias.filter(r => r.activo);
        return persona;
    }
    async getFindByFieldPagination(params, page, limit) {
        const skip = (page - 1) * limit;
        const queryParams = { ...params, lista_negra: false };
        const pipeline = [
            { $match: queryParams },
            {
                $addFields: {
                    direccion_seleccionada: {
                        $cond: {
                            if: { $isArray: '$direcciones' },
                            then: {
                                $let: {
                                    vars: {
                                        activeDir: {
                                            $filter: {
                                                input: '$direcciones',
                                                as: 'dir',
                                                cond: '$$dir.activo'
                                            }
                                        }
                                    },
                                    in: {
                                        $arrayElemAt: [
                                            '$$activeDir.direccion_completa',
                                            0
                                        ]
                                    }
                                }
                            },
                            else: null
                        }
                    },
                    telefono_seleccionado: {
                        $cond: {
                            if: { $isArray: '$telefonos' },
                            then: {
                                $let: {
                                    vars: {
                                        activeTel: {
                                            $filter: {
                                                input: '$telefonos',
                                                as: 'tel',
                                                cond: '$$tel.activo'
                                            }
                                        }
                                    },
                                    in: {
                                        $arrayElemAt: ['$$activeTel.numero', 0]
                                    }
                                }
                            },
                            else: null
                        }
                    }
                }
            },
            {
                $project: {
                    dpi: 1,
                    nombre_completo: 1,
                    fecha_nacimiento: 1,
                    direccion: '$direccion_seleccionada',
                    telefono: '$telefono_seleccionado'
                }
            },
            { $skip: skip },
            { $limit: limit }
        ];
        const [totalResult, personas] = await Promise.all([
            this.personaModel
                .aggregate([
                { $match: queryParams },
                { $count: 'total' }
            ])
                .exec(),
            this.personaModel.aggregate(pipeline).exec()
        ]);
        const total = totalResult.length > 0 ? totalResult[0].total : 0;
        return {
            data: personas,
            total,
            page,
            limit,
            has_next_page: page * limit < total
        };
    }
};
exports.PersonaLookupService = PersonaLookupService;
exports.PersonaLookupService = PersonaLookupService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(Persona_1.Persona.name)),
    __metadata("design:paramtypes", [mongoose_2.Model])
], PersonaLookupService);
//# sourceMappingURL=persona-lookup.service.js.map