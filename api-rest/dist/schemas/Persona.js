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
exports.PersonaSchema = exports.Persona = void 0;
const mongoose_1 = require("@nestjs/mongoose");
const Direccion_1 = require("./Direccion");
const Telefono_1 = require("./Telefono");
const Correo_1 = require("./Correo");
const Foto_1 = require("./Foto");
const Firma_1 = require("./Firma");
const Trabajo_1 = require("./Trabajo");
const Detencion_1 = require("./Detencion");
const Estudio_1 = require("./Estudio");
const Licencia_1 = require("./Licencia");
const Vehiculo_1 = require("./Vehiculo");
const Referencia_1 = require("./Referencia");
const RelacionPersona_1 = require("./RelacionPersona");
const Fuente_1 = require("./Fuente");
const swagger_1 = require("@nestjs/swagger");
let Persona = class Persona {
    dpi;
    nit;
    igss;
    irtra;
    cedula;
    pasaporte;
    primer_nombre;
    segundo_nombre;
    tercer_nombre;
    primer_apellido;
    segundo_apellido;
    apellido_casada;
    nombre_completo;
    fecha_nacimiento;
    estado_civil;
    genero;
    nacionalidad;
    discapacidad;
    padre;
    madre;
    conyugue;
    grupo_sanguino;
    tipo_cliente;
    direcciones;
    telefonos;
    correos;
    fotos;
    firmas;
    trabajos;
    detenciones;
    estudios;
    licencias;
    vehiculos;
    referencias;
    relaciones;
    fuentes;
    actualizado_global;
    lista_negra;
};
exports.Persona = Persona;
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true, unique: true }),
    __metadata("design:type", String)
], Persona.prototype, "dpi", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "nit", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "igss", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "irtra", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "cedula", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "pasaporte", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "primer_nombre", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "segundo_nombre", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "tercer_nombre", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "primer_apellido", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "segundo_apellido", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "apellido_casada", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "nombre_completo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Date)
], Persona.prototype, "fecha_nacimiento", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "estado_civil", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "genero", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "nacionalidad", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "discapacidad", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "padre", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "madre", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "conyugue", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "grupo_sanguino", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Persona.prototype, "tipo_cliente", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Direccion_1.Direccion] }),
    (0, mongoose_1.Prop)([{ type: Direccion_1.DireccionSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "direcciones", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Telefono_1.Telefono] }),
    (0, mongoose_1.Prop)([{ type: Telefono_1.TelefonoSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "telefonos", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Correo_1.Correo] }),
    (0, mongoose_1.Prop)([{ type: Correo_1.CorreoSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "correos", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Foto_1.Foto] }),
    (0, mongoose_1.Prop)([{ type: Foto_1.FotoSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "fotos", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Firma_1.Firma] }),
    (0, mongoose_1.Prop)([{ type: Firma_1.FirmaSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "firmas", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Trabajo_1.Trabajo] }),
    (0, mongoose_1.Prop)([{ type: Trabajo_1.TrabajoSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "trabajos", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Detencion_1.Detencion] }),
    (0, mongoose_1.Prop)([{ type: Detencion_1.DetencionSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "detenciones", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Estudio_1.Estudio] }),
    (0, mongoose_1.Prop)([{ type: Estudio_1.EstudioSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "estudios", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Licencia_1.Licencia] }),
    (0, mongoose_1.Prop)([{ type: Licencia_1.LicenciaSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "licencias", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Vehiculo_1.Vehiculo] }),
    (0, mongoose_1.Prop)([{ type: Vehiculo_1.VehiculoSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "vehiculos", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Referencia_1.Referencia] }),
    (0, mongoose_1.Prop)([{ type: Referencia_1.ReferenciaSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "referencias", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [RelacionPersona_1.RelacionPersona] }),
    (0, mongoose_1.Prop)([{ type: RelacionPersona_1.RelacionPersonaSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "relaciones", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [Fuente_1.Fuente] }),
    (0, mongoose_1.Prop)([{ type: Fuente_1.FuenteSchema }]),
    __metadata("design:type", Array)
], Persona.prototype, "fuentes", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ default: Date.now }),
    __metadata("design:type", Date)
], Persona.prototype, "actualizado_global", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ default: false }),
    __metadata("design:type", Boolean)
], Persona.prototype, "lista_negra", void 0);
exports.Persona = Persona = __decorate([
    (0, mongoose_1.Schema)({ collection: 'persona' })
], Persona);
exports.PersonaSchema = mongoose_1.SchemaFactory.createForClass(Persona);
exports.PersonaSchema.index({ dpi: 1 }, { unique: true });
exports.PersonaSchema.index({ nit: 1 });
exports.PersonaSchema.index({ igss: 1 });
exports.PersonaSchema.index({ irtra: 1 });
exports.PersonaSchema.index({ cedula: 1 });
exports.PersonaSchema.index({ pasaporte: 1 });
exports.PersonaSchema.index({ primer_nombre: 1 });
exports.PersonaSchema.index({ segundo_nombre: 1 });
exports.PersonaSchema.index({ primer_apellido: 1 });
exports.PersonaSchema.index({ segundo_apellido: 1 });
exports.PersonaSchema.index({ nombre_completo: 1 });
exports.PersonaSchema.index({ primer_nombre: 1, primer_apellido: 1 });
exports.PersonaSchema.index({ 'telefonos.numero': 1 });
exports.PersonaSchema.index({ 'correos.correo': 1 });
exports.PersonaSchema.index({ 'direcciones.direccion': 1 });
exports.PersonaSchema.index({ 'trabajos.razon_social': 1 });
//# sourceMappingURL=Persona.js.map