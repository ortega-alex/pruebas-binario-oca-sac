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
exports.MessageCountRespose = exports.ReponsePagination = exports.PersonaCorta = void 0;
const swagger_1 = require("@nestjs/swagger");
class PersonaCorta {
    dpi;
    nombre_completo;
    fecha_nacimiento;
    direccion;
    telefono;
}
exports.PersonaCorta = PersonaCorta;
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", String)
], PersonaCorta.prototype, "dpi", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", String)
], PersonaCorta.prototype, "nombre_completo", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Date)
], PersonaCorta.prototype, "fecha_nacimiento", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    __metadata("design:type", String)
], PersonaCorta.prototype, "direccion", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ required: false }),
    __metadata("design:type", String)
], PersonaCorta.prototype, "telefono", void 0);
class ReponsePagination {
    total;
    data;
    page;
    limit;
    has_next_page;
}
exports.ReponsePagination = ReponsePagination;
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Number)
], ReponsePagination.prototype, "total", void 0);
__decorate([
    (0, swagger_1.ApiProperty)({ type: [PersonaCorta] }),
    __metadata("design:type", Array)
], ReponsePagination.prototype, "data", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Number)
], ReponsePagination.prototype, "page", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Number)
], ReponsePagination.prototype, "limit", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Boolean)
], ReponsePagination.prototype, "has_next_page", void 0);
class MessageCountRespose {
    matchedCount;
    modifiedCound;
    message;
}
exports.MessageCountRespose = MessageCountRespose;
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Number)
], MessageCountRespose.prototype, "matchedCount", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", Number)
], MessageCountRespose.prototype, "modifiedCound", void 0);
__decorate([
    (0, swagger_1.ApiProperty)(),
    __metadata("design:type", String)
], MessageCountRespose.prototype, "message", void 0);
//# sourceMappingURL=ApiResponse.js.map