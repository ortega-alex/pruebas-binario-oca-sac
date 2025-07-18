import { HydratedDocument, Schema as MongooseSchema } from 'mongoose';
export type RelacionPersonaDocument = HydratedDocument<RelacionPersona>;
export declare const TIPOS_RELACION_PERSONA: (string | null)[];
export declare class RelacionPersona {
    persona: string;
    tipo_relacion?: string;
    observacion?: string;
}
export declare const RelacionPersonaSchema: MongooseSchema<RelacionPersona, import("mongoose").Model<RelacionPersona, any, any, any, import("mongoose").Document<unknown, any, RelacionPersona, any> & RelacionPersona & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}, any>, {}, {}, {}, {}, import("mongoose").DefaultSchemaOptions, RelacionPersona, import("mongoose").Document<unknown, {}, import("mongoose").FlatRecord<RelacionPersona>, {}> & import("mongoose").FlatRecord<RelacionPersona> & {
    _id: import("mongoose").Types.ObjectId;
} & {
    __v: number;
}>;
