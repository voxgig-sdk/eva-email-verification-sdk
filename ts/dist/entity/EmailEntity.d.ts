import { EvaEmailVerificationEntityBase } from '../EvaEmailVerificationEntityBase';
import type { EvaEmailVerificationSDK } from '../EvaEmailVerificationSDK';
import type { Control } from '../types';
import type { Email, EmailLoadMatch } from '../EvaEmailVerificationTypes';
declare class EmailEntity extends EvaEmailVerificationEntityBase<Email> {
    constructor(client: EvaEmailVerificationSDK, entopts: any);
    make(this: EmailEntity): EmailEntity;
    load(this: any, reqmatch?: EmailLoadMatch, ctrl?: Control): Promise<EmailEntity>;
}
export { EmailEntity };
