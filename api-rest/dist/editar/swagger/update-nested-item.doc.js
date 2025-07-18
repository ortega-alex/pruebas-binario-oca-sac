"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocUpdateNestedItem = DocUpdateNestedItem;
const api_decoration_doc_1 = require("../../decorators/api-decoration.doc");
const dto_1 = require("../dto");
function DocUpdateNestedItem() {
    return (0, api_decoration_doc_1.getApiDecorationEdit)({
        sumary: 'Actualiza un elemento de una lista embebida',
        body: {
            type: dto_1.UpdateNestedItemDto,
            description: 'Datos necesarios para actualizar un elemento de una lista embebida'
        }
    });
}
//# sourceMappingURL=update-nested-item.doc.js.map