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
exports.UpdateNestedItemDto = void 0;
const swagger_1 = require("@nestjs/swagger");
const class_validator_1 = require("class-validator");
const dpi_validation_1 = require("../../validations/dpi-validation");
class UpdateNestedItemDto {
    dpi;
    listName;
    subdocumentId;
}
exports.UpdateNestedItemDto = UpdateNestedItemDto;
__decorate([
    (0, dpi_validation_1.IsDpiValid)({ message: 'El DPI proporcionado no es válido' }),
    (0, swagger_1.ApiProperty)({
        description: 'DPI del persona que desea actualizar el elemento.',
        example: '1234567890123'
    }),
    __metadata("design:type", String)
], UpdateNestedItemDto.prototype, "dpi", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'El campo "listName" debe ser una cadena de texto.' }),
    (0, class_validator_1.IsNotEmpty)({ message: 'El campo "listName" no puede estar vacío.' }),
    (0, swagger_1.ApiProperty)({
        description: 'Nombre de la lista embebida.',
        example: 'fotos'
    }),
    __metadata("design:type", String)
], UpdateNestedItemDto.prototype, "listName", void 0);
__decorate([
    (0, class_validator_1.IsString)({
        message: 'El campo "subdocumentId" debe ser una cadena de texto (el UUID del subdocumento).'
    }),
    (0, class_validator_1.IsNotEmpty)({ message: 'El campo "subdocumentId" no puede estar vacío.' }),
    (0, swagger_1.ApiProperty)({
        description: 'UUID único del elemento dentro de la lista a actualizar.',
        example: 'a1b2c3d4-e5f6-4789-9012-3456789abcdef0'
    }),
    __metadata("design:type", String)
], UpdateNestedItemDto.prototype, "subdocumentId", void 0);
//# sourceMappingURL=update-nested-item.dto.js.map