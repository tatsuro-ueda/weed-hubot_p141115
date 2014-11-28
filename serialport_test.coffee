serialport = require('serialport')

portName = '/dev/ttyACM0'
sp = new serialport.SerialPort portName, {
  baudRate: 9600
  dataBits: 8
  parity: 'none'
  stopBits: 1
  flowControl: false
  parser: serialport.parsers.readline("\n")   # ※修正：パースの単位を改行で行う
}

# data from Serial port
sp.on 'data', (input) ->
#  input.replace /^(.*)\n$/, '$1'
  console.log "部屋の温度は、#{input}"
