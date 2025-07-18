"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocGetByDni = DocGetByDni;
exports.DocGetByCedula = DocGetByCedula;
exports.DocGetByIgss = DocGetByIgss;
exports.DocGetByIrtra = DocGetByIrtra;
exports.DocGetByNit = DocGetByNit;
exports.DocGetByPasaporte = DocGetByPasaporte;
const api_decoration_doc_1 = require("./api-decoration.doc");
function DocGetByDni() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por DNI',
        params: [
            {
                name: 'dpi',
                type: 'string',
                required: true,
                description: 'DNI de la persona'
            }
        ]
    });
}
function DocGetByCedula() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por No. de afiliación CEDULA',
        params: [
            {
                name: 'cedula',
                type: 'string',
                required: true,
                description: 'No. de afiliación CEDULA de la persona'
            }
        ]
    });
}
function DocGetByIgss() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por No. de afiliación IGSS',
        params: [
            {
                name: 'igss',
                type: 'string',
                required: true,
                description: 'No. de afiliación IGSS de la persona'
            }
        ]
    });
}
function DocGetByIrtra() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por No. de afiliación IRTRA',
        params: [
            {
                name: 'irtra',
                type: 'string',
                required: true,
                description: 'No. de afiliación IRTRA de la persona'
            }
        ]
    });
}
function DocGetByNit() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por DNI',
        params: [
            {
                name: 'nit',
                type: 'string',
                required: true,
                description: 'Nit de la persona'
            }
        ]
    });
}
function DocGetByPasaporte() {
    return (0, api_decoration_doc_1.getApiDecoration)({
        sumary: 'Obtener datos de una persona por Pasaporte',
        params: [
            {
                name: 'pasaporte',
                type: 'string',
                required: true,
                description: 'Pasaporte de la persona'
            }
        ]
    });
}
//# sourceMappingURL=documento.doc.js.map