import { Model } from 'mongoose';
import { ReponsePagination } from 'src/schemas/ApiResponse';
import { Persona, PersonaDocument } from 'src/schemas/Persona';
export declare class BusquedaService {
    private personaModel;
    constructor(personaModel: Model<PersonaDocument>);
    private getFindByField;
    private getFindByFieldPagination;
    getByDni(dpi: string): Promise<Persona | null>;
    getByNit(nit: string): Promise<Persona | null>;
    getByIgss(igss: string): Promise<Persona | null>;
    getByIrtra(irtra: string): Promise<Persona | null>;
    getByCedula(cedula: string): Promise<Persona | null>;
    getByPasaporte(pasaporte: string): Promise<Persona | null>;
    getByFullName(nombre_completo: string, page: number, limit: number): Promise<ReponsePagination>;
    getByFirstNameAndLastName(primer_nombre: string, primer_apellido: string, page: number, limit: number): Promise<ReponsePagination>;
    getBySurnames(primer_apellido: string, segundo_apellido: string, page: number, limit: number): Promise<ReponsePagination>;
    getByPhoneNumber(numero: string, page: number, limit: number): Promise<ReponsePagination>;
    getByEmail(correo: string): Promise<Persona | null>;
    getByAddress(direccion: string, page: number, limit: number): Promise<ReponsePagination>;
    getByTrabajo(razon_social: string, page: number, limit: number): Promise<ReponsePagination>;
}
