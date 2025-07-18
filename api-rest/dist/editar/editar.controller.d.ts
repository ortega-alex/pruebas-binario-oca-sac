import { BlackListDto, NewRelationDto, UpdateNestedItemDto } from './dto';
import { EditarService } from './editar.service';
export declare class EditarController {
    private readonly editarService;
    constructor(editarService: EditarService);
    newRelation(body: NewRelationDto): Promise<import("../schemas/Persona").Persona | null>;
    updateMultipleBlacklist(body: BlackListDto): Promise<import("../schemas/ApiResponse").MessageCountRespose>;
    inactivarElemento(body: UpdateNestedItemDto): Promise<import("../schemas/Persona").Persona | null>;
}
