import { HydratedDocument } from 'mongoose';
export type CorreoDocument = HydratedDocument<Correo>;
export declare class Correo {
    correo: string;
    tipo?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const CorreoSchema: import("mongoose").Schema<Correo, import("mongoose").Model<Correo, any, any, any, import("mongoose").Document<unknown, any, Correo, any> & Correo & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Correo, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Correo>, {}> & import("mongoose").FlatRecord<Correo> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
