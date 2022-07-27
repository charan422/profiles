FROM node:lts-alpine3.15

WORKDIR /src

COPY package.json .

RUN npm install

COPY . .

EXPOSE 9000

ENTRYPOINT [ "node", "./https.js" ]


# https://art01.corp.pingidentity.com/artifactory/api/npm/npm-virtual/
# https://verdaccio.singularkey.com/


# progress=false
# registry=https://art01.corp.pingidentity.com/artifactory/api/npm/npm-virtual/
# //verdaccio.singularkey.com/:_authToken="vFpzBlQTq0yjEDaQcfcUDMlX+3A21w2l6F41zNB6nNk="
# //art01.corp.pingidentity.com/artifactory/api/npm/npm-virtual/:_authToken=eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJzUWdqd0ktZ3hINUp4MXJmaGtYRFJ3OHk2cThGYVFlYVVteDIxcDN4RWowIn0.eyJzdWIiOiJqZnJ0QDAxY2F4dGV3cm03cjlyMXkzeTZ0ZTcxYjdjXC91c2Vyc1wvY2tvbmRhcGkiLCJzY3AiOiJtZW1iZXItb2YtZ3JvdXBzOioiLCJhdWQiOiJqZnJ0QDAxY2F4dGV3cm03cjlyMXkzeTZ0ZTcxYjdjIiwiaXNzIjoiamZydEAwMWNheHRld3JtN3I5cjF5M3k2dGU3MWI3Y1wvdXNlcnNcL2Nrb25kYXBpIiwiaWF0IjoxNjU4NzYxMzkyLCJqdGkiOiI3ZjZjNjBmMi1kNzAwLTRiNDctOWRiOS1kMzIyZWE5ODhlYzcifQ.DTi2VZwJHsNw39dCuAujbOLdlNaU_Brwc_NOQ9OySGPmah2w-e0EjqSM-DW8ZsWmmu-Ad3m45W8OX_i7B-wxfvucgJHl8ABWykMtGY2SNgFDiMw5v0SETkKyt-4xbsAS6sxjcufZPZSiuUV_hR5a-LILfDmhj5dECBK8vKHnmo_nwNfN2wGEZ2aejKgFk8dndVnh692NMKQLidvY8VtPiNRKYB6jkVwr18BtDgHpp8Nl4BX94bIi0FsYOSc_BtH4kSJy8WAWgbXTNXvU3LcDxue_nyHODCyoYj-HjQHtzTJTrXSUIP16jRJm_yT1jVmgqPOP-6Ed9hmhmr-ajKlxtQ