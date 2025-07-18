"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocBlackList = DocBlackList;
const api_decoration_doc_1 = require("../../decorators/api-decoration.doc");
const dto_1 = require("../dto");
function DocBlackList() {
    return (0, api_decoration_doc_1.getApiDecorationEdit)({
        sumary: 'Permite actualizar la lista negra de personas por medio de un array de DPIs',
        body: {
            type: dto_1.BlackListDto,
            description: 'Datos necesarios para actualizar la lista negra'
        },
        edit: true
    });
}
//# sourceMappingURL=black-list.doc.js.map