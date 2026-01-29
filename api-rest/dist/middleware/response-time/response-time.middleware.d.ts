import { NestMiddleware } from '@nestjs/common';
import { NextFunction, Request, Response } from 'express';
export declare class ResponseTimeMiddleware implements NestMiddleware {
    use(_req: Request, res: Response, next: NextFunction): void;
}
