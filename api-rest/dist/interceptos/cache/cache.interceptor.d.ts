import { Cache } from '@nestjs/cache-manager';
import { CallHandler, ExecutionContext, NestInterceptor } from '@nestjs/common';
import { Observable } from 'rxjs';
export declare class CacheInterceptor implements NestInterceptor {
    private cacheManager;
    private readonly _CACHETIME;
    private readonly _PAGE;
    private readonly _LIMIT;
    constructor(cacheManager: Cache);
    intercept(context: ExecutionContext, next: CallHandler): Promise<Observable<any>>;
    private buildCacheKey;
}
