import { HydratedDocument } from 'mongoose';
import { Direccion } from './Direccion';
import { Telefono } from './Telefono';
import { Correo } from './Correo';
import { Foto } from './Foto';
import { Firma } from './Firma';
import { Trabajo } from './Trabajo';
import { Detencion } from './Detencion';
import { Estudio } from './Estudio';
import { Licencia } from './Licencia';
import { Vehiculo } from './Vehiculo';
import { Referencia } from './Referencia';
import { RelacionPersona } from './RelacionPersona';
import { Fuente } from './Fuente';
export type PersonaDocument = HydratedDocument<Persona>;
export declare class Persona {
    dpi: string;
    nit: string;
    igss: string;
    irtra: string;
    cedula: string;
    pasaporte: string;
    primer_nombre: string;
    segundo_nombre: string;
    tercer_nombre: string;
    primer_apellido: string;
    segundo_apellido: string;
    apellido_casada: string;
    nombre_completo: string;
    fecha_nacimiento: Date;
    estado_civil: string;
    genero: string;
    nacionalidad: string;
    discapacidad: string;
    padre: string;
    madre: string;
    conyugue: string;
    grupo_sanguino: string;
    tipo_cliente: string;
    direcciones: Direccion[];
    telefonos: Telefono[];
    correos: Correo[];
    fotos: Foto[];
    firmas: Firma[];
    trabajos: Trabajo[];
    detenciones: Detencion[];
    estudios: Estudio[];
    licencias: Licencia[];
    vehiculos: Vehiculo[];
    referencias: Referencia[];
    relaciones: RelacionPersona[];
    fuentes: Fuente[];
    actualizado_global: Date;
    lista_negra: boolean;
    relaciones_buscadas: boolean;
}
export declare const PersonaSchema: import("mongoose").Schema<Persona, import("mongoose").Model<Persona, any, any, any, import("mongoose").Document<unknown, any, Persona, any> & Persona & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Persona, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Persona>, {}> & import("mongoose").FlatRecord<Persona> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
