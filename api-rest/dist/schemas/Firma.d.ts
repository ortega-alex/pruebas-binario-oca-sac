import { HydratedDocument } from 'mongoose';
export type FirmaDocument = HydratedDocument<Firma>;
export declare class Firma {
    url: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const FirmaSchema: import("mongoose").Schema<Firma, import("mongoose").Model<Firma, any, any, any, import("mongoose").Document<unknown, any, Firma, any> & Firma & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Firma, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Firma>, {}> & import("mongoose").FlatRecord<Firma> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
