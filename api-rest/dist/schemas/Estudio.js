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
exports.EstudioSchema = exports.Estudio = void 0;
const mongoose_1 = require("@nestjs/mongoose");
const swagger_1 = require("@nestjs/swagger");
let Estudio = class Estudio {
    uuid;
    entidad;
    direccion;
    grado;
    periodo;
    tabla;
    activo;
    fecha_ingreso_oca;
};
exports.Estudio = Estudio;
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true, unique: false }),
    __metadata("design:type", String)
], Estudio.prototype, "uuid", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], Estudio.prototype, "entidad", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Estudio.prototype, "direccion", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Estudio.prototype, "grado", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Estudio.prototype, "periodo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Estudio.prototype, "tabla", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ default: true }),
    __metadata("design:type", Boolean)
], Estudio.prototype, "activo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Date)
], Estudio.prototype, "fecha_ingreso_oca", void 0);
exports.Estudio = Estudio = __decorate([
    (0, mongoose_1.Schema)({ collection: 'estudio' })
], Estudio);
exports.EstudioSchema = mongoose_1.SchemaFactory.createForClass(Estudio);
//# sourceMappingURL=Estudio.js.map