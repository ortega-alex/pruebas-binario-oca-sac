import { HydratedDocument } from 'mongoose';
export type VehiculoDocument = HydratedDocument<Vehiculo>;
export declare class Vehiculo {
    marca: string;
    modelo?: string;
    linea?: string;
    color?: string;
    placa?: string;
    anio?: string;
    serie?: string;
    tabla?: string;
    activo: boolean;
    fecha_ingreso_oca?: Date;
}
export declare const VehiculoSchema: import("mongoose").Schema<Vehiculo, import("mongoose").Model<Vehiculo, any, any, any, import("mongoose").Document<unknown, any, Vehiculo, any> & Vehiculo & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, Vehiculo, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<Vehiculo>, {}> & import("mongoose").FlatRecord<Vehiculo> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
