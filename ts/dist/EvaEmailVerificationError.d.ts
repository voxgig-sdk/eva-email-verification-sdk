import { Context } from './Context';
declare class EvaEmailVerificationError extends Error {
    isEvaEmailVerificationError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { EvaEmailVerificationError };
