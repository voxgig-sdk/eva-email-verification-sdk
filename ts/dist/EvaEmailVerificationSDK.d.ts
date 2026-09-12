import { EmailEntity } from './entity/EmailEntity';
export type * from './EvaEmailVerificationTypes';
import { inspect } from 'node:util';
import type { Context, Feature } from './types';
import { config } from './Config';
import { EvaEmailVerificationEntityBase } from './EvaEmailVerificationEntityBase';
import { Utility } from './utility/Utility';
import { BaseFeature } from './feature/base/BaseFeature';
declare const stdutil: Utility;
declare class EvaEmailVerificationSDK {
    _mode: string;
    _options: any;
    _utility: Utility;
    _features: Feature[];
    _rootctx: Context;
    constructor(options?: any);
    options(): any;
    utility(): any;
    prepare(fetchargs?: any): Promise<any>;
    direct(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    _rawRequest(fetchargs?: any): Promise<Error | {
        ok: boolean;
        status: number;
        headers: any;
        data: any;
        err?: undefined;
    } | {
        ok: boolean;
        err: any;
        status?: undefined;
        headers?: undefined;
        data?: undefined;
    }>;
    graphql(query: string, variables?: any, ctrl?: any): Promise<any>;
    Email(entopts?: Record<string, any>): EmailEntity;
    static test(testoptsarg?: any, sdkoptsarg?: any): EvaEmailVerificationSDK;
    tester(testopts?: any, sdkopts?: any): EvaEmailVerificationSDK;
    toJSON(): {
        name: string;
    };
    toString(): string;
    [inspect.custom](): string;
}
declare const SDK: typeof EvaEmailVerificationSDK;
export { stdutil, config, BaseFeature, EvaEmailVerificationEntityBase, EvaEmailVerificationSDK, SDK, };
