import { Model } from 'mongoose';
import { MessageCountRespose } from 'src/schemas/ApiResponse';
import { Persona, PersonaDocument } from 'src/schemas/Persona';
import { PersonaLookupService } from 'src/services/persona-lookup.service';
export declare class EditarService {
    private personaModel;
    private readonly personaLookupService;
    constructor(personaModel: Model<PersonaDocument>, personaLookupService: PersonaLookupService);
    newRelation(titular_id: string, relacionar_id: string, tipo_relacion: string, genero?: string): Promise<Persona | null>;
    updateMultipleBlacklist(dpis: string[], estado: boolean): Promise<MessageCountRespose>;
    inactivarElementoEnLista(dpi: string, listName: string, subdocumentId: string): Promise<Persona | null>;
}
