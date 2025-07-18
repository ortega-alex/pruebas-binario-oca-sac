"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByCorreo = DocGetByCorreo;
const api_decoration_doc_1 = require("../../decorators/api-decoration.doc");
function DocGetByCorreo() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por correo',
        params: [
            {
                name: 'correo',
                type: 'string',
                required: true,
                description: 'Correo de la persona'
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
//# sourceMappingURL=correo.doc.js.map