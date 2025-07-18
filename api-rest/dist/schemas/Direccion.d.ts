import { HydratedDocument } from 'mongoose';
export type DireccionDocument = HydratedDocument<Direccion>;
export declare class Direccion {
    uuid: string;
    direccion_completa: string;
    direccion_unicode?: string;
    municipio?: string;
    departamento?: string;
    colonia?: string;
    zona?: string;
    calle?: string;
    avenida?: string;
    descripcion?: string;
    direccion_actual: boolean;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const DireccionSchema: import("mongoose").Schema<Direccion, import("mongoose").Model<Direccion, any, any, any, import("mongoose").Document<unknown, any, Direccion, any> & Direccion & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Direccion, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Direccion>, {}> & import("mongoose").FlatRecord<Direccion> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
