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
exports.CorreoDto = void 0;
const class_validator_1 = require("class-validator");
class CorreoDto {
    correo;
}
exports.CorreoDto = CorreoDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'La dirección no es válida' }),
    (0, class_validator_1.MinLength)(5, {
        message: 'La dirección debe tener al menos 5 caracteres'
    }),
    __metadata("design:type", String)
], CorreoDto.prototype, "correo", void 0);
//# sourceMappingURL=correo.dto.js.map