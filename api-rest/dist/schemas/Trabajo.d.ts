import { HydratedDocument } from 'mongoose';
export type TrabajoDocument = HydratedDocument<Trabajo>;
export declare class Trabajo {
    razon_social: string;
    direccion?: string;
    cargo?: string;
    salario?: number;
    jefe?: string;
    antiguedad?: string;
    fecha_inicio?: Date;
    fecha_fin?: Date;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const TrabajoSchema: import("mongoose").Schema<Trabajo, import("mongoose").Model<Trabajo, any, any, any, import("mongoose").Document<unknown, any, Trabajo, any> & Trabajo & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Trabajo, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Trabajo>, {}> & import("mongoose").FlatRecord<Trabajo> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
