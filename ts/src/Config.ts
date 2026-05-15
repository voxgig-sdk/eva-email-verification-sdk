
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }


  main = {
    name: 'ProjectName',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    }

  }


  options = {
    base: 'https://api.eva.pingutil.com',

    auth: {
      prefix: 'Bearer',
    },

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
          "req": false,
          "type": "`$BOOLEAN`",
          "active": true,
          "index$": 0
        },
        {
          "name": "domain",
          "req": false,
          "type": "`$STRING`",
          "active": true,
          "index$": 1
        },
        {
          "name": "email",
          "req": false,
          "type": "`$STRING`",
          "active": true,
          "index$": 2
        },
        {
          "name": "free_provider",
          "req": false,
          "type": "`$BOOLEAN`",
          "active": true,
          "index$": 3
        },
        {
          "name": "mx_record",
          "req": false,
          "type": "`$BOOLEAN`",
          "active": true,
          "index$": 4
        },
        {
          "name": "role_account",
          "req": false,
          "type": "`$BOOLEAN`",
          "active": true,
          "index$": 5
        },
        {
          "name": "smtp_check",
          "req": false,
          "type": "`$BOOLEAN`",
          "active": true,
          "index$": 6
        },
        {
          "name": "status",
          "req": false,
          "type": "`$STRING`",
          "active": true,
          "index$": 7
        }
      ],
      "name": "email",
      "op": {
        "load": {
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
                    "type": "`$STRING`",
                    "active": true
                  }
                ]
              },
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
              },
              "active": true,
              "index$": 0
            }
          ],
          "input": "data",
          "key$": "load"
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

