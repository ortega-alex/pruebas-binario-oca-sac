"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByDireccion = DocGetByDireccion;
const api_decoration_doc_1 = require("./api-decoration.doc");
function DocGetByDireccion() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Dirección',
        params: [
            {
                name: 'direccion',
                type: 'string',
                required: true,
                description: 'Direección de la persona'
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
//# sourceMappingURL=direccion.doc.js.map