"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByNombreCompleto = DocGetByNombreCompleto;
exports.DocGetByPrimerNombrePrimerApellido = DocGetByPrimerNombrePrimerApellido;
exports.DocGetByPrimerApellidoSegundoApellido = DocGetByPrimerApellidoSegundoApellido;
const api_decoration_doc_1 = require("../../decorators/api-decoration.doc");
const querys = [
    {
        name: 'page',
        type: 'number',
        required: false,
        description: 'Página de la paginación'
    },
    {
        name: 'limit',
        type: 'number',
        required: false,
        description: 'Límite de la paginación'
    }
];
function DocGetByNombreCompleto() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Nombre Completo',
        params: [
            {
                name: 'nombre_completo',
                type: 'string',
                required: true,
                description: 'Nombre Completo de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
function DocGetByPrimerNombrePrimerApellido() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Primer Nombre y Primer Apellido',
        params: [
            {
                name: 'primer_nombre',
                type: 'string',
                required: true,
                description: 'Primer Nombre de la persona'
            },
            {
                name: 'primer_apellido',
                type: 'string',
                required: true,
                description: 'Primer Apellido de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
function DocGetByPrimerApellidoSegundoApellido() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Primer Apellido y Segundo Apellido',
        params: [
            {
                name: 'primer_apellido',
                type: 'string',
                required: true,
                description: 'Primer Apellido de la persona'
            },
            {
                name: 'segundo_apellido',
                type: 'string',
                required: true,
                description: 'Segundo Apellido de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
//# sourceMappingURL=nombres.doc.js.map