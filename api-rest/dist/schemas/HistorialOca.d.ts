import { HydratedDocument } from 'mongoose';
export type TrabajoDocument = HydratedDocument<HistorialOca>;
export declare class HistorialOca {
    uuid: string;
    control: string;
    area?: string;
    cliente?: string;
    producto?: string;
    estatus?: string;
    activo: boolean;
    tabla?: string;
    fecha_ingreso_oca?: Date;
}
export declare const HistorialOcaSchema: import("mongoose").Schema<HistorialOca, import("mongoose").Model<HistorialOca, any, any, any, import("mongoose").Document<unknown, any, HistorialOca, any> & HistorialOca & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, HistorialOca, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<HistorialOca>, {}> & import("mongoose").FlatRecord<HistorialOca> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
