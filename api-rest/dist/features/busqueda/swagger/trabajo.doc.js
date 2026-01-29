"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByTrabajo = DocGetByTrabajo;
exports.DocGetByLastNameAndWork = DocGetByLastNameAndWork;
const api_decoration_doc_1 = require("../../../decorators/api-decoration.doc");
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
function DocGetByTrabajo() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por trabajo',
        params: [
            {
                name: 'razon_social',
                type: 'string',
                required: true,
                description: 'Razón social de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
function DocGetByLastNameAndWork() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por primer apellido y lugar detrabajo',
        params: [
            {
                name: 'primer_apellido',
                type: 'string',
                required: true,
                description: 'Primer apellido de la persona'
            },
            {
                name: 'razon_social',
                type: 'string',
                required: true,
                description: 'Razón social de la entidad'
            }
        ],
        querys,
        multiline: true
    });
}
//# sourceMappingURL=trabajo.doc.js.map