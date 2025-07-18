import { HydratedDocument, Schema as MongooseSchema, Types } from 'mongoose';
export type RelacionPersonaDocument = HydratedDocument<RelacionPersona>;
export declare const TIPOS_RELACION_PERSONA: (string | null)[];
export declare const RELACION_LOGICA: {
    padre: string[];
    madre: string[];
    hijo: string[];
    hija: string[];
    esposa: string[];
    marido: string[];
    conyugue: string[];
    hermano: string[];
    hermana: string[];
    hermanastro: string[];
    hermanastra: string[];
    abuelo: string[];
    abuela: string[];
    primo: string[];
    prima: string[];
    tío: string[];
    tía: string[];
    amigo: string[];
    conocido: string[];
    referencia_laboral: string[];
    nieto: string[];
    nieta: string[];
    sobrino: string[];
    sobrina: string[];
    abogado: string[];
    ex: string[];
    null: null[];
};
export declare class RelacionPersona {
    persona: Types.ObjectId;
    tipo_relacion?: string;
    observacion?: string;
}
export declare const RelacionPersonaSchema: MongooseSchema<RelacionPersona, import("mongoose").Model<RelacionPersona, any, any, any, import("mongoose").Document<unknown, any, RelacionPersona, any> & RelacionPersona & {
    _id: Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, RelacionPersona, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<RelacionPersona>, {}> & import("mongoose").FlatRecord<RelacionPersona> & {
    _id: Types.ObjectId;
} & {
    __v: number;
}>;
