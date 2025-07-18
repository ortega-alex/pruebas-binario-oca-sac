export interface PropertyParams {
    name: string;
    type: string;
    description: string;
    required: boolean;
}
export interface ApiDecoration {
    sumary: string;
    params?: PropertyParams[];
    querys?: PropertyParams[];
    body?: {
        type: Function;
        description?: string;
        required?: boolean;
    };
    multiline?: boolean;
    edit?: boolean;
}
export declare function getApiDecoration(apiDecoration: ApiDecoration): <TFunction extends Function, Y>(target: TFunction | object, propertyKey?: string | symbol, descriptor?: TypedPropertyDescriptor<Y>) => void;
export declare function getApiDecorationEdit(apiDecoration: ApiDecoration): <TFunction extends Function, Y>(target: TFunction | object, propertyKey?: string | symbol, descriptor?: TypedPropertyDescriptor<Y>) => void;
