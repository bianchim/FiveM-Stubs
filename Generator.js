const fs = require('fs')
const path = require('path')
const https = require('https')

let docURL = 'https://runtime.fivem.net/doc/natives.json'
let docURLCFX = 'https://runtime.fivem.net/doc/natives_cfx.json'
let folder = './Natives/'

function FetchDoc (url) {
  https.get(url, (resp) => {
    let data = ''

    // Get data chunk.
    resp.on('data', (chunk) => {
      data += chunk
    })

    // All chunks have arrived,
    resp.on('end', () => {
      ParseDocumentation(JSON.parse(data))
    })

  }).on('error', (err) => {
    console.log('Error: ' + err.message)
  })
}

function ParseDocumentation (data) {
  for (const [namespace, entry] of Object.entries(data)) {
    let filename = `native_${namespace.toLowerCase()}.lua`

    for (const [address, native] of Object.entries(entry)) {
      // No name means no function, skip that
      if (typeof native.name === 'undefined') {
        continue
      }

      let functionName = GetFunctionNameFromNative(native)
      let { params, descParams } = GetParamsFromNative(native)
      let desc = GetFunctionDescFromNative(native)

      desc.push(`--- @name ${native.name}`)

      descParams.forEach((elt, index) => {
        desc.push(`--- ${elt}`)
      })

      if (typeof native.results !== 'undefined') {
        desc.push(`--- @return ${GetLuaTypeFromCType(native.results)}`)
      }

      desc = desc.join('\n')
      if (desc !== '') {
        desc = `\n${desc}`
      }

      AppendToFile(filename, `${desc}\nfunction ${functionName}(${params}) end\n`)
    }
  }
}

function GetFunctionDescFromNative (native) {
  let desc = []
  desc = native.description.split('\n')
  desc = desc.filter((str) => str !== '' && str !== '```')
  desc.forEach((elt, index) => {
    desc[index] = `--- ${elt}`
  })
  return desc
}

function GetFunctionNameFromNative (native) {
  let functionName = native.name.split('_')
  functionName.forEach((elt, index) => {
    elt = elt.toLowerCase()
    elt = elt.charAt(0).toUpperCase() + elt.slice(1)
    functionName[index] = elt
  })

  return functionName.join('')
}

function GetParamsFromNative (native) {
  if (native.params.length === 0) {
    return {
      params: '',
      descParams: [],
    }
  }

  let result = []
  let descParams = []

  native.params.forEach((elt, index) => {
    let type = GetLuaTypeFromCType(elt.type)
    let name = SanitizeReservedWord(elt.name)
    descParams.push(`@param ${name} ${type} ${elt.description ?? ''}`)
    result.push(`${name}`)
  })

  return {
    params: result.join(', '),
    descParams: descParams,
  }
}

function SanitizeReservedWord (name) {
  switch (name) {
    case 'end':
      return '_end'
    default:
      return name
  }
}

function GetLuaTypeFromCType (type) {
  // Ignore pointer typing, irrelevant for lua
  if (type.slice(-1) === '*') {
    type = type.slice(0, -1)
  }

  switch (type) {
    case 'char':
      return 'string'
    case 'float':
    case 'int':
    case 'long':
      return 'number'
    case 'bool':
    case 'BOOL':
      return 'boolean'
    case 'Any':
      return ''
    case 'Ped':
    case 'Object':
    case 'Entity':
    case 'Vehicle':
    case 'Cam':
    case 'Hash':
    case 'Player':
    case 'Vector3':
    case 'ScrHandle':
    case 'Blip':
    case 'Pickup':
    case 'FireId':
      return type
    default:
      return type + ' (Type not found)'
  }
}

function AppendToFile (filename, content) {
  fs.appendFile(folder + filename, content, function () {})
}

function ClearPrevious () {
  fs.readdir(folder, (err, files) => {
    if (err) {
      throw err
    }

    for (const file of files) {
      fs.unlink(path.join(folder, file), (err) => {
        if (err) {
          throw err
        }
      })
    }
  })
}

ClearPrevious()
FetchDoc(docURL)
FetchDoc(docURLCFX)