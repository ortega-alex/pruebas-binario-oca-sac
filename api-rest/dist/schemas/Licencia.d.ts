import { HydratedDocument } from 'mongoose';
export type LicenciaDocument = HydratedDocument<Licencia>;
export declare class Licencia {
    numero: string;
    tipo?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const LicenciaSchema: import("mongoose").Schema<Licencia, import("mongoose").Model<Licencia, any, any, any, import("mongoose").Document<unknown, any, Licencia, any> & Licencia & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Licencia, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Licencia>, {}> & import("mongoose").FlatRecord<Licencia> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
