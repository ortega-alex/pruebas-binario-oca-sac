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
exports.EditarController = void 0;
const common_1 = require("@nestjs/common");
const swagger_1 = require("@nestjs/swagger");
const dto_1 = require("./dto");
const editar_service_1 = require("./editar.service");
const swagger_2 = require("./swagger");
let EditarController = class EditarController {
    editarService;
    constructor(editarService) {
        this.editarService = editarService;
    }
    async newRelation(body) {
        return this.editarService.newRelation(body.titular_id, body.relacionar_id, body.tipo_relacion, body?.genero);
    }
    async updateMultipleBlacklist(body) {
        const result = this.editarService.updateMultipleBlacklist(body.dpis, body.estado ?? true);
        return result;
    }
    async inactivarElemento(body) {
        return this.editarService.inactivarElementoEnLista(body.dpi, body.listName, body.subdocumentId);
    }
};
exports.EditarController = EditarController;
__decorate([
    (0, swagger_2.DocNewRelation)(),
    (0, common_1.Put)('new-relation'),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.NewRelationDto]),
    __metadata("design:returntype", Promise)
], EditarController.prototype, "newRelation", null);
__decorate([
    (0, swagger_2.DocBlackList)(),
    (0, common_1.Patch)('lista-negra'),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.BlackListDto]),
    __metadata("design:returntype", Promise)
], EditarController.prototype, "updateMultipleBlacklist", null);
__decorate([
    (0, swagger_2.DocUpdateNestedItem)(),
    (0, common_1.Patch)('inactivar-elemento'),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [dto_1.UpdateNestedItemDto]),
    __metadata("design:returntype", Promise)
], EditarController.prototype, "inactivarElemento", null);
exports.EditarController = EditarController = __decorate([
    (0, swagger_1.ApiTags)('editar'),
    (0, common_1.Controller)('editar'),
    __metadata("design:paramtypes", [editar_service_1.EditarService])
], EditarController);
//# sourceMappingURL=editar.controller.js.map