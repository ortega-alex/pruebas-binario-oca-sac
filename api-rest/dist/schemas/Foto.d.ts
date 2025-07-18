import { HydratedDocument } from 'mongoose';
export type FotoDocument = HydratedDocument<Foto>;
export declare class Foto {
    url: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const FotoSchema: import("mongoose").Schema<Foto, import("mongoose").Model<Foto, any, any, any, import("mongoose").Document<unknown, any, Foto, any> & Foto & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Foto, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Foto>, {}> & import("mongoose").FlatRecord<Foto> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
