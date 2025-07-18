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
exports.SurnameAndAddressDto = exports.SecondSurnameAndAddressDto = exports.LastNameAndAddressDto = void 0;
const class_validator_1 = require("class-validator");
class LastNameAndAddressDto {
    primer_apellido;
    direccion;
}
exports.LastNameAndAddressDto = LastNameAndAddressDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El primer apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El primer apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], LastNameAndAddressDto.prototype, "primer_apellido", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'La dirección no es válida' }),
    (0, class_validator_1.MinLength)(10, {
        message: 'La dirección debe tener al menos 10 caracteres'
    }),
    __metadata("design:type", String)
], LastNameAndAddressDto.prototype, "direccion", void 0);
class SecondSurnameAndAddressDto {
    segundo_apellido;
    direccion;
}
exports.SecondSurnameAndAddressDto = SecondSurnameAndAddressDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El segundo apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El segundo apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], SecondSurnameAndAddressDto.prototype, "segundo_apellido", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'La dirección no es válida' }),
    (0, class_validator_1.MinLength)(10, {
        message: 'La dirección debe tener al menos 10 caracteres'
    }),
    __metadata("design:type", String)
], SecondSurnameAndAddressDto.prototype, "direccion", void 0);
class SurnameAndAddressDto {
    primer_apellido;
    segundo_apellido;
    direccion;
}
exports.SurnameAndAddressDto = SurnameAndAddressDto;
__decorate([
    (0, class_validator_1.IsString)({ message: 'El primer apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El primer apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], SurnameAndAddressDto.prototype, "primer_apellido", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'El segundo apellido no es válido' }),
    (0, class_validator_1.MinLength)(3, {
        message: 'El segundo apellido debe tener al menos 3 caracteres'
    }),
    __metadata("design:type", String)
], SurnameAndAddressDto.prototype, "segundo_apellido", void 0);
__decorate([
    (0, class_validator_1.IsString)({ message: 'La dirección no es válida' }),
    (0, class_validator_1.MinLength)(10, {
        message: 'La dirección debe tener al menos 10 caracteres'
    }),
    __metadata("design:type", String)
], SurnameAndAddressDto.prototype, "direccion", void 0);
//# sourceMappingURL=name-and-address.dto.js.map