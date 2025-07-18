export declare class PersonaCorta {
    dpi: string;
    nombre_completo: string;
    genero: string;
    fecha_nacimiento: Date;
    direccion?: string;
    telefono?: string;
}
export declare class ReponsePagination {
    total: number;
    data: PersonaCorta[];
    page: number;
    limit: number;
    has_next_page: boolean;
}
