"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByCorreo = DocGetByCorreo;
const api_decoration_doc_1 = require("./api-decoration.doc");
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
        ]
    });
}
//# sourceMappingURL=correo.dto.js.map