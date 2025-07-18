import { Cache } from '@nestjs/cache-manager';
import { BusquedaService } from './busqueda.service';
import { CedulaParamDto, CorreoDto, DireccionDto, DpiParamDto, IgssParamDto, IrtraParamDto, LastNameAndAddressDto, NitParamDto, NombreApellidoDto, NombreCompletoDto, PasaporteParamDto, PhoneNumberDto, PrimerApellidoSegundoApellidoDto, SecondSurnameAndAddressDto, SurnameAndAddressDto, TrabajoDto } from './dto';
import { PaginationQueryDto } from 'src/dto/pagination.dto';
export declare class BusquedaController {
    private readonly busquedaService;
    private cacheManager;
    private readonly _CACHETIME;
    private readonly _PAGE;
    private readonly _LIMIT;
    constructor(busquedaService: BusquedaService, cacheManager: Cache);
    getByDni(params: DpiParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByNit(params: NitParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByIgss(params: IgssParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByIrtra(params: IrtraParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByCedula(params: CedulaParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByPasaporte(params: PasaporteParamDto): Promise<import("../schemas/Persona").Persona | null>;
    getByNombreCompleto(params: NombreCompletoDto, query: PaginationQueryDto): Promise<{}>;
    getByPrimerNombrePrimerApellido(params: NombreApellidoDto, query: PaginationQueryDto): Promise<{}>;
    getByPrimerApellidoSegundoApellido(params: PrimerApellidoSegundoApellidoDto, query: PaginationQueryDto): Promise<{}>;
    getByNumeroTelefono(params: PhoneNumberDto, query: PaginationQueryDto): Promise<{}>;
    getByCorreo(params: CorreoDto, query: PaginationQueryDto): Promise<{}>;
    getByDireccion(params: DireccionDto, query: PaginationQueryDto): Promise<{}>;
    getByTrabajo(params: TrabajoDto, query: PaginationQueryDto): Promise<{}>;
    getByLastNameAndAddress(params: LastNameAndAddressDto, query: PaginationQueryDto): Promise<{}>;
    getBySecondSurnameAndAddress(params: SecondSurnameAndAddressDto, query: PaginationQueryDto): Promise<{}>;
    getBySurnameAndAddress(params: SurnameAndAddressDto, query: PaginationQueryDto): Promise<{}>;
}
