import { PaginationQueryDto } from 'src/dto/pagination.dto';
import { BusquedaService } from './busqueda.service';
import { AppellidoCasadaDto, CedulaParamDto, CorreoDto, DireccionDto, DpiParamDto, IgssParamDto, IrtraParamDto, LastNameAndAddressDto, LastNameAndMunicipalityDto, LastNameAndWorkDto, NitParamDto, NombreApellidoDto, NombreCompletoDto, PasaporteParamDto, PhoneNumberDto, PrimerApellidoSegundoApellidoDto, SecondSurnameAndAddressDto, SurnameAndAddressDto, TrabajoDto } from './dto';
export declare class BusquedaController {
    private readonly busquedaService;
    private readonly _PAGE;
    private readonly _LIMIT;
    constructor(busquedaService: BusquedaService);
    getByDni(params: DpiParamDto): Promise<import("../../schemas/Persona").Persona | null>;
    getByNit(params: NitParamDto): Promise<import("../../schemas/Persona").Persona | null>;
    getByIgss(params: IgssParamDto): Promise<import("../../schemas/Persona").Persona | null>;
    getByIrtra(params: IrtraParamDto): Promise<import("../../schemas/Persona").Persona | null>;
    getByCedula(params: CedulaParamDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByPasaporte(params: PasaporteParamDto): Promise<import("../../schemas/Persona").Persona | null>;
    getByNombreCompleto(params: NombreCompletoDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByPrimerNombrePrimerApellido(params: NombreApellidoDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByPrimerApellidoSegundoApellido(params: PrimerApellidoSegundoApellidoDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByMarriedName(params: AppellidoCasadaDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByNumeroTelefono(params: PhoneNumberDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByCorreo(params: CorreoDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByDireccion(params: DireccionDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByTrabajo(params: TrabajoDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByLastNameAndAddress(params: LastNameAndAddressDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getBySecondSurnameAndAddress(params: SecondSurnameAndAddressDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getBySurnameAndAddress(params: SurnameAndAddressDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByLastNameAndMunicipality(params: LastNameAndMunicipalityDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
    getByLastNameAndWork(params: LastNameAndWorkDto, query: PaginationQueryDto): Promise<import("../../schemas/ApiResponse").ReponsePagination>;
}
