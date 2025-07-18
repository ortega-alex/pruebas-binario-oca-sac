import { HydratedDocument } from 'mongoose';
export type FuenteDocument = HydratedDocument<Fuente>;
export declare class Fuente {
    base_datos: string;
    tabla?: string;
    fecha_ingreso_oca?: Date;
    actualizado_en: Date;
}
export declare const FuenteSchema: import("mongoose").Schema<Fuente, import("mongoose").Model<Fuente, any, any, any, import("mongoose").Document<unknown, any, Fuente, any> & Fuente & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Fuente, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Fuente>, {}> & import("mongoose").FlatRecord<Fuente> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
