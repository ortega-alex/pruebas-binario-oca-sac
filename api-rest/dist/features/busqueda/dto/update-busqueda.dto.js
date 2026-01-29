"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UpdateBusquedaDto = void 0;
const mapped_types_1 = require("@nestjs/mapped-types");
const create_busqueda_dto_1 = require("./create-busqueda.dto");
class UpdateBusquedaDto extends (0, mapped_types_1.PartialType)(create_busqueda_dto_1.CreateBusquedaDto) {
    id;
}
exports.UpdateBusquedaDto = UpdateBusquedaDto;
//# sourceMappingURL=update-busqueda.dto.js.map