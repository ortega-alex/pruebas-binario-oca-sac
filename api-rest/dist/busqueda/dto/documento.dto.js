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
exports.PasaporteParamDto = exports.CedulaParamDto = exports.IrtraParamDto = exports.IgssParamDto = exports.NitParamDto = exports.DpiParamDto = void 0;
const class_validator_1 = require("class-validator");
const dpi_validation_1 = require("../../validations/dpi-validation");
const nit_validation_1 = require("../../validations/nit-validation");
class DpiParamDto {
    dpi;
}
exports.DpiParamDto = DpiParamDto;
__decorate([
    (0, dpi_validation_1.IsDpiValid)({ message: 'El DPI proporcionado no es válido' }),
    __metadata("design:type", String)
], DpiParamDto.prototype, "dpi", void 0);
class NitParamDto {
    nit;
}
exports.NitParamDto = NitParamDto;
__decorate([
    (0, nit_validation_1.IsNitValid)({ message: 'El NIT proporcionado no es válido' }),
    __metadata("design:type", String)
], NitParamDto.prototype, "nit", void 0);
class IgssParamDto {
    numero;
}
exports.IgssParamDto = IgssParamDto;
__decorate([
    (0, class_validator_1.IsNotEmpty)({ message: 'El número no puede estar vacío' }),
    (0, class_validator_1.MinLength)(6, { message: 'El número debe tener al menos 6 dígitos' }),
    __metadata("design:type", String)
], IgssParamDto.prototype, "numero", void 0);
class IrtraParamDto {
    numero;
}
exports.IrtraParamDto = IrtraParamDto;
__decorate([
    (0, class_validator_1.IsNotEmpty)({ message: 'El número no puede estar vacío' }),
    (0, class_validator_1.MinLength)(6, { message: 'El número debe tener al menos 6 dígitos' }),
    __metadata("design:type", String)
], IrtraParamDto.prototype, "numero", void 0);
class CedulaParamDto {
    numero;
}
exports.CedulaParamDto = CedulaParamDto;
__decorate([
    (0, class_validator_1.IsNotEmpty)({ message: 'El número no puede estar vacío' }),
    (0, class_validator_1.MinLength)(8, { message: 'El número debe tener al menos 8 dígitos' }),
    __metadata("design:type", String)
], CedulaParamDto.prototype, "numero", void 0);
class PasaporteParamDto {
    numero;
}
exports.PasaporteParamDto = PasaporteParamDto;
__decorate([
    (0, class_validator_1.IsNotEmpty)({ message: 'El número no puede estar vacío' }),
    (0, class_validator_1.MinLength)(6, { message: 'El número debe tener al menos 6 dígitos' }),
    __metadata("design:type", String)
], PasaporteParamDto.prototype, "numero", void 0);
//# sourceMappingURL=documento.dto.js.map