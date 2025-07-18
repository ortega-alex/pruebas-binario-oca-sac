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
exports.TelefonoSchema = exports.Telefono = void 0;
const mongoose_1 = require("@nestjs/mongoose");
const swagger_1 = require("@nestjs/swagger");
let Telefono = class Telefono {
    uuid;
    numero;
    formato_original;
    tipo;
    tabla;
    compania;
    estado;
    activo;
    fecha_ingreso_oca;
};
exports.Telefono = Telefono;
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true, unique: false }),
    __metadata("design:type", String)
], Telefono.prototype, "uuid", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], Telefono.prototype, "numero", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ required: true }),
    __metadata("design:type", String)
], Telefono.prototype, "formato_original", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Telefono.prototype, "tipo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Telefono.prototype, "tabla", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Telefono.prototype, "compania", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", String)
], Telefono.prototype, "estado", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    (0, mongoose_1.Prop)({ default: true }),
    __metadata("design:type", Boolean)
], Telefono.prototype, "activo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    (0, mongoose_1.Prop)(),
    __metadata("design:type", Date)
], Telefono.prototype, "fecha_ingreso_oca", void 0);
exports.Telefono = Telefono = __decorate([
    (0, mongoose_1.Schema)({ collection: 'telefono' })
], Telefono);
exports.TelefonoSchema = mongoose_1.SchemaFactory.createForClass(Telefono);
//# sourceMappingURL=Telefono.js.map