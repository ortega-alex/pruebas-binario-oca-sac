import { Model } from 'mongoose';
import { ReponsePagination } from 'src/schemas/ApiResponse';
import { Persona, PersonaDocument } from 'src/schemas/Persona';
export declare class PersonaLookupService {
    private personaModel;
    constructor(personaModel: Model<PersonaDocument>);
    getFindByField(field: string, value: string, buscar_relacion?: boolean): Promise<Persona | null>;
    getFindByFieldPagination(params: {
        [key: string]: any;
    }, page: number, limit: number): Promise<ReponsePagination>;
}
