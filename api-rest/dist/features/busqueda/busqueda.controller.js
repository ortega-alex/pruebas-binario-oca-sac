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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.BusquedaController = void 0;
const common_1 = require("@nestjs/common");
const swagger_1 = require("@nestjs/swagger");
const cachable_decorator_1 = require("../../decorators/cachable.decorator");
const pagination_dto_1 = require("../../dto/pagination.dto");
const busqueda_service_1 = require("./busqueda.service");
const dto_1 = require("./dto");
const swagger_2 = require("./swagger");
let BusquedaController = class BusquedaController {
    busquedaService;
    _PAGE = 1;
    _LIMIT = 500;
    constructor(busquedaService) {
        this.busquedaService = busquedaService;
    }
    getByDni(params) {
        return this.busquedaService.getByDni(params.dpi);
    }
    getByNit(params) {
        return this.busquedaService.getByNit(params.nit);
    }
    getByIgss(params) {
        return this.busquedaService.getByIgss(params.igss);
    }
    getByIrtra(params) {
        return this.busquedaService.getByIrtra(params.irtra);
    }
    getByCedula(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByCedula(params.cedula, page, limit);
    }
    getByPasaporte(params) {
        return this.busquedaService.getByPasaporte(params.pasaporte);
    }
    getByNombreCompleto(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByFullName(params.nombre_completo, page, limit);
    }
    getByPrimerNombrePrimerApellido(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByFirstNameAndLastName(params.primer_nombre, params.primer_apellido, page, limit);
    }
    getByPrimerApellidoSegundoApellido(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getBySurnames(params.primer_apellido, params.segundo_apellido, page, limit);
    }
    getByMarriedName(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByMarriedName(params.apellido_casada, page, limit);
    }
    getByNumeroTelefono(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByPhoneNumber(params.numero, page, limit);
    }
    async getByCorreo(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByEmail(params.correo, page, limit);
    }
    async getByDireccion(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByAddress(params.direccion, page, limit);
    }
    getByTrabajo(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByTrabajo(params.razon_social, page, limit);
    }
    getByLastNameAndAddress(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getByLastNameAndAddress(params.primer_apellido, params.direccion, page, limit);
    }
    getBySecondSurnameAndAddress(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getBySecondSurnameAndAddress(params.segundo_apellido, params.direccion, page, limit);
    }
    getBySurnameAndAddress(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getBySurnameAndAddress(params.primer_apellido, params.segundo_apellido, params.direccion, page, limit);
    }
    getByLastNameAndMunicipality(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getLastNameAndMunicipality(params.primer_apellido, params.municipio, page, limit);
    }
    async getByLastNameAndWork(params, query) {
        const page = query.page || this._PAGE;
        const limit = query.limit || this._LIMIT;
        return this.busquedaService.getLastNameAndWork(params.primer_apellido, params.razon_social, page, limit);
    }
};
exports.BusquedaController = BusquedaController;
__decorate([
    (0, swagger_2.DocGetByDni)(),
    (0, common_1.Get)('dpi/:dpi'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe({ whitelist: true, transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.DpiParamDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByDni", null);
__decorate([
    (0, swagger_2.DocGetByNit)(),
    (0, common_1.Get)('nit/:nit'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe({ whitelist: true, transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.NitParamDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByNit", null);
__decorate([
    (0, swagger_2.DocGetByIgss)(),
    (0, common_1.Get)('igss/:igss'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.IgssParamDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByIgss", null);
__decorate([
    (0, swagger_2.DocGetByIrtra)(),
    (0, common_1.Get)('irtra/:irtra'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.IrtraParamDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByIrtra", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByCedula)(),
    (0, common_1.Get)('cedula/:cedula'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.CedulaParamDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByCedula", null);
__decorate([
    (0, swagger_2.DocGetByPasaporte)(),
    (0, common_1.Get)('pasaporte/:pasaporte'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.PasaporteParamDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByPasaporte", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByNombreCompleto)(),
    (0, common_1.Get)('nombre-completo/:nombre_completo'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.NombreCompletoDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByNombreCompleto", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByPrimerNombrePrimerApellido)(),
    (0, common_1.Get)('nombre-apellido/:primer_nombre/:primer_apellido'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.NombreApellidoDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByPrimerNombrePrimerApellido", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByPrimerApellidoSegundoApellido)(),
    (0, common_1.Get)('apellidos/:primer_apellido/:segundo_apellido'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.PrimerApellidoSegundoApellidoDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByPrimerApellidoSegundoApellido", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByMarriedName)(),
    (0, common_1.Get)('apellido-casada/:apellido_casada'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.AppellidoCasadaDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByMarriedName", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByNumeroTelefono)(),
    (0, common_1.Get)('numero-telefono/:numero'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.PhoneNumberDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByNumeroTelefono", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByCorreo)(),
    (0, common_1.Get)('correo/:correo'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.CorreoDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", Promise)
], BusquedaController.prototype, "getByCorreo", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByDireccion)(),
    (0, common_1.Get)('direccion/:direccion'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.DireccionDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", Promise)
], BusquedaController.prototype, "getByDireccion", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByTrabajo)(),
    (0, common_1.Get)('trabajo/:razon_social'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.TrabajoDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByTrabajo", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByLastNameAndAddress)(),
    (0, common_1.Get)('primer-apellido-direccion/:primer_apellido/:direccion'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.LastNameAndAddressDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByLastNameAndAddress", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetBySecoundSurnameAndAddress)(),
    (0, common_1.Get)('segundo-apellido-direccion/:segundo_apellido/:direccion'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.SecondSurnameAndAddressDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getBySecondSurnameAndAddress", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetBySurnameAndAddress)(),
    (0, common_1.Get)('apellidos-direccion/:primer_apellido/:segundo_apellido/:direccion'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.SurnameAndAddressDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getBySurnameAndAddress", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByLastNameAndMunicipality)(),
    (0, common_1.Get)('apellido-municipio/:primer_apellido/:municipio'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.LastNameAndMunicipalityDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", void 0)
], BusquedaController.prototype, "getByLastNameAndMunicipality", null);
__decorate([
    (0, cachable_decorator_1.Cachable)(),
    (0, swagger_2.DocGetByLastNameAndWork)(),
    (0, common_1.Get)('apellido-trabajo/:primer_apellido/:razon_social'),
    __param(0, (0, common_1.Param)(new common_1.ValidationPipe())),
    __param(1, (0, common_1.Query)(new common_1.ValidationPipe({ transform: true }))),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.LastNameAndWorkDto,
        pagination_dto_1.PaginationQueryDto]),
    __metadata("design:returntype", Promise)
], BusquedaController.prototype, "getByLastNameAndWork", null);
exports.BusquedaController = BusquedaController = __decorate([
    (0, swagger_1.ApiTags)('busqueda'),
    (0, common_1.Controller)('busqueda'),
    __metadata("design:paramtypes", [busqueda_service_1.BusquedaService])
], BusquedaController);
//# sourceMappingURL=busqueda.controller.js.map