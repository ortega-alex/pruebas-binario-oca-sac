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
exports.PrimerApellidoSegundoApellidoDto = exports.NombreApellidoDto = exports.NombreCompletoDto = void 0;
const class_validator_1 = require("class-validator");
class NombreCompletoDto {
    nombre_completo;
}
exports.NombreCompletoDto = NombreCompletoDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El nombre completo no es válido' }),
    (0, class_validator_1.IsNotEmpty)({ message: 'El nombre completo no puede estar vacío' }),
    (0, class_validator_1.MinLength)(4, {
        message: 'El nombre completo debe tener al menos 8 caracteres'
    }),
    __metadata("design:type", String)
], NombreCompletoDto.prototype, "nombre_completo", void 0);
class NombreApellidoDto {
    primer_nombre;
    primer_apellido;
}
exports.NombreApellidoDto = NombreApellidoDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El nombre no es válido' }),
    (0, class_validator_1.MinLength)(3, { message: 'El nombre debe tener al menos 3 caracteres' }),
    __metadata("design:type", String)
], NombreApellidoDto.prototype, "primer_nombre", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'El apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, { message: 'El apellido debe tener al menos 3 caracteres' }),
    __metadata("design:type", String)
], NombreApellidoDto.prototype, "primer_apellido", void 0);
class PrimerApellidoSegundoApellidoDto {
    primer_apellido;
    segundo_apellido;
}
exports.PrimerApellidoSegundoApellidoDto = PrimerApellidoSegundoApellidoDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El primer apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El primer apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], PrimerApellidoSegundoApellidoDto.prototype, "primer_apellido", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'El segundo apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El segundo apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], PrimerApellidoSegundoApellidoDto.prototype, "segundo_apellido", void 0);
//# sourceMappingURL=nombres.dto.js.map