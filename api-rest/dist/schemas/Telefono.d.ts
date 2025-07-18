import { HydratedDocument } from 'mongoose';
export type TelefonoDocument = HydratedDocument<Telefono>;
export declare class Telefono {
    uuid: string;
    numero: string;
    formato_original: string;
    tipo?: string;
    tabla?: string;
    compania?: string;
    estado?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const TelefonoSchema: import("mongoose").Schema<Telefono, import("mongoose").Model<Telefono, any, any, any, import("mongoose").Document<unknown, any, Telefono, any> & Telefono & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Telefono, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Telefono>, {}> & import("mongoose").FlatRecord<Telefono> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
