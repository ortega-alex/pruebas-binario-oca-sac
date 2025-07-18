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
exports.RelacionPersonaSchema = exports.RelacionPersona = exports.TIPOS_RELACION_PERSONA = void 0;
const mongoose_1 = require("@nestjs/mongoose");
const swagger_1 = require("@nestjs/swagger");
const mongoose_2 = require("mongoose");
exports.TIPOS_RELACION_PERSONA = [
    'padre',
    'madre',
    'hermano',
    'hermana',
    'abuelo',
    'abuela',
    'primo',
    'prima',
    'tío',
    'tía',
    'esposa',
    'marido',
    'conyugue',
    'hijo',
    'hija',
    'amigo',
    'conocido',
    'referencia_laboral',
    'nieto',
    'nieta',
    'sobrino',
    'sobrina',
    'abogado',
    'ex',
    null
];
let RelacionPersona = class RelacionPersona {
    persona;
    tipo_relacion;
    observacion;
};
exports.RelacionPersona = RelacionPersona;
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ type: mongoose_2.Schema.ObjectId, ref: 'Persona', required: true }),
    __metadata("design:type", String)
], RelacionPersona.prototype, "persona", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)({ enum: exports.TIPOS_RELACION_PERSONA }),
    __metadata("design:type", String)
], RelacionPersona.prototype, "tipo_relacion", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], RelacionPersona.prototype, "observacion", void 0);
exports.RelacionPersona = RelacionPersona = __decorate([
    (0, mongoose_1.Schema)({ _id: false, collection: 'relacion_persona' })
], RelacionPersona);
exports.RelacionPersonaSchema = mongoose_1.SchemaFactory.createForClass(RelacionPersona);
//# sourceMappingURL=RelacionPersona.js.map