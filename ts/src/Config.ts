
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }


  main = {
    name: 'EvaEmailVerification',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: "https://api.eva.pingutil.com",

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      email: {
      },

    }
  }


  entity = {
    "email": {
      "fields": [
        {
          "name": "disposable",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "domain",
          "type": "`$STRING`"
        },
        {
          "name": "email",
          "type": "`$STRING`"
        },
        {
          "name": "free_provider",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "mx_records",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "role_account",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "smtp_check",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "status",
          "type": "`$STRING`"
        }
      ],
      "name": "email",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "query": [
                  {
                    "example": "user@example.com",
                    "kind": "query",
                    "name": "email",
                    "orig": "email",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/email",
              "parts": [
                "email"
              ],
              "select": {
                "exist": [
                  "email"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

