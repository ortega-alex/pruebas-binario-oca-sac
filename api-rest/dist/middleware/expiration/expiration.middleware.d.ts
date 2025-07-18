import { NestMiddleware } from '@nestjs/common';
import { NextFunction, Response, Request } from 'express';
export declare class ExpirationMiddleware implements NestMiddleware {
    private readonly expirationDate;
    use(_: Request, res: Response, next: NextFunction): Response<any, Record<string, any>> | undefined;
}
