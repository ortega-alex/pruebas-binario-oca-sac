"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DocNewRelation = DocNewRelation;
const api_decoration_doc_1 = require("../../decorators/api-decoration.doc");
const dto_1 = require("../dto");
function DocNewRelation() {
    return (0, api_decoration_doc_1.getApiDecorationEdit)({
        sumary: 'Crear una nueva relación',
        body: {
            type: dto_1.NewRelationDto,
            description: 'Datos necesarios para crear la relación'
        }
    });
}
//# sourceMappingURL=new-relation.doc.js.map