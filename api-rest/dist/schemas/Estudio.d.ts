import { HydratedDocument } from 'mongoose';
export type EstudioDocument = HydratedDocument<Estudio>;
export declare class Estudio {
    uuid: string;
    entidad: string;
    direccion?: string;
    grado?: string;
    periodo?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const EstudioSchema: import("mongoose").Schema<Estudio, import("mongoose").Model<Estudio, any, any, any, import("mongoose").Document<unknown, any, Estudio, any> & Estudio & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Estudio, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Estudio>, {}> & import("mongoose").FlatRecord<Estudio> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
