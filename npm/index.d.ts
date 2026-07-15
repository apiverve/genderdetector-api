declare module '@apiverve/genderdetector' {
  export interface genderdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface genderdetectorResponse {
    status: string;
    error: string | null;
    data: GenderDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GenderDetectorData {
      name:     null | string;
      country:  null | string;
      detected: boolean | null;
      gender:   null | string;
  }

  export default class genderdetectorWrapper {
    constructor(options: genderdetectorOptions);

    execute(callback: (error: any, data: genderdetectorResponse | null) => void): Promise<genderdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: genderdetectorResponse | null) => void): Promise<genderdetectorResponse>;
    execute(query?: Record<string, any>): Promise<genderdetectorResponse>;
  }
}
