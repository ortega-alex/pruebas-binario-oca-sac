"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getApiDecoration = getApiDecoration;
exports.getApiDecorationEdit = getApiDecorationEdit;
const common_1 = require("@nestjs/common");
const swagger_1 = require("@nestjs/swagger");
const ApiResponse_1 = require("../schemas/ApiResponse");
const Persona_1 = require("../schemas/Persona");
function getApiDecoration(apiDecoration) {
    return (0, common_1.applyDecorators)((0, swagger_1.ApiOperation)({
        summary: apiDecoration.sumary
    }), ...(apiDecoration.params
        ? apiDecoration.params.map(param => (0, swagger_1.ApiParam)(param))
        : []), ...(apiDecoration.querys
        ? apiDecoration.querys.map(query => (0, swagger_1.ApiQuery)(query))
        : []), ...(apiDecoration.body
        ? [
            (0, swagger_1.ApiBody)({
                type: apiDecoration.body.type,
                required: apiDecoration.body.required ?? true,
                description: apiDecoration.body.description ??
                    'Datos enviados en el body'
            })
        ]
        : []), (0, swagger_1.ApiResponse)({
        status: 200,
        description: 'Datos de la persona',
        type: apiDecoration.multiline ? ApiResponse_1.ReponsePagination : Persona_1.Persona
    }), (0, swagger_1.ApiResponse)({ status: 404, description: 'No se encontró la persona' }), (0, swagger_1.ApiResponse)({ status: 400, description: 'Error de validación' }));
}
function getApiDecorationEdit(apiDecoration) {
    return (0, common_1.applyDecorators)((0, swagger_1.ApiOperation)({
        summary: apiDecoration.sumary
    }), ...(apiDecoration.params
        ? apiDecoration.params.map(param => (0, swagger_1.ApiParam)(param))
        : []), ...(apiDecoration.querys
        ? apiDecoration.querys.map(query => (0, swagger_1.ApiQuery)(query))
        : []), ...(apiDecoration.body
        ? [
            (0, swagger_1.ApiBody)({
                type: apiDecoration.body.type,
                required: apiDecoration.body.required ?? true,
                description: apiDecoration.body.description ??
                    'Datos enviados en el body'
            })
        ]
        : []), (0, swagger_1.ApiResponse)({
        status: 200,
        description: 'Respusta del servicio',
        type: apiDecoration.edit ? ApiResponse_1.MessageCountRespose : Persona_1.Persona
    }), (0, swagger_1.ApiResponse)({ status: 404, description: 'No se encontró la persona' }), (0, swagger_1.ApiResponse)({ status: 400, description: 'Error de validación' }));
}
//# sourceMappingURL=api-decoration.doc.js.map