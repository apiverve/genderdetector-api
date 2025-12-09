declare module '@apiverve/genderdetector' {
  export interface genderdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface genderdetectorResponse {
    status: string;
    error: string | null;
    data: GenderDetectorData;
    code?: number;
  }


  interface GenderDetectorData {
      name:     string;
      country:  string;
      detected: boolean;
      gender:   string;
  }

  export default class genderdetectorWrapper {
    constructor(options: genderdetectorOptions);

    execute(callback: (error: any, data: genderdetectorResponse | null) => void): Promise<genderdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: genderdetectorResponse | null) => void): Promise<genderdetectorResponse>;
    execute(query?: Record<string, any>): Promise<genderdetectorResponse>;
  }
}
