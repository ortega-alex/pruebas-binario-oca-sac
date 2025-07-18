"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByLastNameAndAddress = DocGetByLastNameAndAddress;
exports.DocGetBySecoundSurnameAndAddress = DocGetBySecoundSurnameAndAddress;
exports.DocGetBySurnameAndAddress = DocGetBySurnameAndAddress;
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
function DocGetByLastNameAndAddress() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por primer nombre y dirección',
        params: [
            {
                name: 'primer_apellido',
                type: 'string',
                required: true,
                description: 'Primer apellido de la persona'
            },
            {
                name: 'direccion',
                type: 'string',
                required: true,
                description: 'Direección de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
function DocGetBySecoundSurnameAndAddress() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por segundo apellido y dirección',
        params: [
            {
                name: 'segundo_apellido',
                type: 'string',
                required: true,
                description: 'Segundo apellido de la persona'
            },
            {
                name: 'direccion',
                type: 'string',
                required: true,
                description: 'Direección de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
function DocGetBySurnameAndAddress() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por apellido y dirección',
        params: [
            {
                name: 'primer_apellido',
                type: 'string',
                required: true,
                description: 'Primer apellido de la persona'
            },
            {
                name: 'segundo_apellido',
                type: 'string',
                required: true,
                description: 'Segundo apellido de la persona'
            },
            {
                name: 'direccion',
                type: 'string',
                required: true,
                description: 'Direección de la persona'
            }
        ],
        querys,
        multiline: true
    });
}
//# sourceMappingURL=names-and-address.doc.js.map