"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByNumeroTelefono = DocGetByNumeroTelefono;
const api_decoration_doc_1 = require("./api-decoration.doc");
function DocGetByNumeroTelefono() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Número de Teléfono',
        params: [
            {
                name: 'numero',
                type: 'string',
                required: true,
                description: 'Número de Teléfono de la persona'
            }
        ],
        querys: [
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
        ],
        multiline: true
    });
}
//# sourceMappingURL=numero-telefono.doc.js.map