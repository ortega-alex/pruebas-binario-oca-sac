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
exports.BlackListDto = void 0;
const swagger_1 = require("@nestjs/swagger");
const class_validator_1 = require("class-validator");
const dpi_validation_1 = require("../../validations/dpi-validation");
class BlackListDto {
    dpis;
    estado;
}
exports.BlackListDto = BlackListDto;
__decorate([
    (0, class_validator_1.IsArray)({ message: 'El campo "dpis" debe ser un array.' }),
    (0, class_validator_1.ArrayNotEmpty)({ message: 'El array "dpis" no puede estar vacío.' }),
    (0, class_validator_1.ArrayMinSize)(1, {
        message: 'El array "dpis" debe contener al menos un DPI.'
    }),
    (0, dpi_validation_1.IsDpiValid)({
        each: true,
        message: 'Al menos un DPI proporcionado en el array no es válido.'
    }),
    (0, swagger_1.ApiProperty)({
        description: 'Lista de DPIs para cambiar su estado a lista_negra. Cada DPI debe ser válido.',
        type: [String],
        example: ['1234567890123', '9876543210987']
    }),
    __metadata("design:type", Array)
], BlackListDto.prototype, "dpis", void 0);
__decorate([
    (0, class_validator_1.IsOptional)(),
    (0, swagger_1.ApiProperty)({
        description: 'Estado de la lista negra',
        type: Boolean,
        example: true
    }),
    __metadata("design:type", Boolean)
], BlackListDto.prototype, "estado", void 0);
//# sourceMappingURL=black-list.dto.js.map