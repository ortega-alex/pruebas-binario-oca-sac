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
exports.EditarService = void 0;
const common_1 = require("@nestjs/common");
const mongoose_1 = require("@nestjs/mongoose");
const mongoose_2 = require("mongoose");
const Persona_1 = require("../schemas/Persona");
const RelacionPersona_1 = require("../schemas/RelacionPersona");
const persona_lookup_service_1 = require("../services/persona-lookup.service");
let EditarService = class EditarService {
    personaModel;
    personaLookupService;
    constructor(personaModel, personaLookupService) {
        this.personaModel = personaModel;
        this.personaLookupService = personaLookupService;
    }
    async newRelation(titular_id, relacionar_id, tipo_relacion, genero) {
        const persona = await this.personaModel.findById(titular_id);
        const persona2 = await this.personaModel.findById(relacionar_id);
        if (!persona || !persona2)
            return null;
        const relacion_logica_array = RelacionPersona_1.RELACION_LOGICA[tipo_relacion];
        const relacion_logica = relacion_logica_array.length > 0 && genero
            ? relacion_logica_array[genero === 'M' ? 0 : 1]
            : relacion_logica_array[0];
        persona.relaciones.push({
            persona: persona2._id,
            tipo_relacion
        });
        if (relacion_logica)
            persona2.relaciones.push({
                persona: persona._id,
                tipo_relacion: relacion_logica
            });
        await persona.save();
        await persona2.save();
        return await this.personaLookupService.getFindByField('dpi', persona.dpi);
    }
    async updateMultipleBlacklist(dpis, estado) {
        const result = await this.personaModel
            .updateMany({ dpi: { $in: dpis } }, { lista_negra: estado })
            .exec();
        return {
            message: 'Lista negra actualizada',
            matchedCount: result.matchedCount,
            modifiedCound: result.modifiedCount
        };
    }
    async inactivarElementoEnLista(dpi, listName, subdocumentId) {
        const allowedLists = [
            'direcciones',
            'telefonos',
            'correos',
            'fotos',
            'firmas',
            'trabajos',
            'detenciones',
            'estudios',
            'licencias',
            'vehiculos',
            'referencias'
        ];
        if (!allowedLists.includes(listName)) {
            throw new common_1.BadRequestException(`El nombre de lista '${listName}' no es válido o no está permitido para actualización.`);
        }
        const filter = {
            dpi: dpi,
            [`${listName}.uuid`]: subdocumentId
        };
        const update = {
            $set: {
                [`${listName}.$.activo`]: false
            }
        };
        const options = {
            new: true,
            runValidators: true
        };
        const updatedPersona = await this.personaModel
            .findOneAndUpdate(filter, update, options)
            .exec();
        if (!updatedPersona) {
            throw new common_1.NotFoundException(`Persona con DPI ${dpi} o elemento con UUID ${subdocumentId} en la lista '${listName}' no encontrado.`);
        }
        return await this.personaLookupService.getFindByField('dpi', dpi);
    }
};
exports.EditarService = EditarService;
exports.EditarService = EditarService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, mongoose_1.InjectModel)(Persona_1.Persona.name)),
    __metadata("design:paramtypes", [mongoose_2.Model,
        persona_lookup_service_1.PersonaLookupService])
], EditarService);
//# sourceMappingURL=editar.service.js.map