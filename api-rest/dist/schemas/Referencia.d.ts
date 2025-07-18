import { HydratedDocument } from 'mongoose';
export type ReferenciaDocument = HydratedDocument<Referencia>;
export declare class Referencia {
    uuid: string;
    telefono: string;
    nombre?: string;
    relacion?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const ReferenciaSchema: import("mongoose").Schema<Referencia, import("mongoose").Model<Referencia, any, any, any, import("mongoose").Document<unknown, any, Referencia, any> & Referencia & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Referencia, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Referencia>, {}> & import("mongoose").FlatRecord<Referencia> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
