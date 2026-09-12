export interface Email {
    disposable?: boolean;
    domain?: string;
    email?: string;
    free_provider?: boolean;
    mx_records?: boolean;
    role_account?: boolean;
    smtp_check?: boolean;
    status?: string;
}
export interface EmailLoadMatch {
    email: string;
}
