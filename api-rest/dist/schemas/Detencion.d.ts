import { HydratedDocument } from 'mongoose';
export type DetencionDocument = HydratedDocument<Detencion>;
export declare class Detencion {
    documento: string;
    fecha?: Date;
    motivo?: string;
    juzgado?: string;
    observacion?: string;
    orden?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const DetencionSchema: import("mongoose").Schema<Detencion, import("mongoose").Model<Detencion, any, any, any, import("mongoose").Document<unknown, any, Detencion, any> & Detencion & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Detencion, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Detencion>, {}> & import("mongoose").FlatRecord<Detencion> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
