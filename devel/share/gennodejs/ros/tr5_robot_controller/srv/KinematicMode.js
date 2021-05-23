// Auto-generated. Do not edit!

// (in-package tr5_robot_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class KinematicModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode_value = null;
    }
    else {
      if (initObj.hasOwnProperty('mode_value')) {
        this.mode_value = initObj.mode_value
      }
      else {
        this.mode_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinematicModeRequest
    // Serialize message field [mode_value]
    bufferOffset = _serializer.uint8(obj.mode_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinematicModeRequest
    let len;
    let data = new KinematicModeRequest(null);
    // Deserialize message field [mode_value]
    data.mode_value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tr5_robot_controller/KinematicModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd104cf2962786ef45793330ebf60a0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 mode_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KinematicModeRequest(null);
    if (msg.mode_value !== undefined) {
      resolved.mode_value = msg.mode_value;
    }
    else {
      resolved.mode_value = 0
    }

    return resolved;
    }
};

class KinematicModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinematicModeResponse
    // Serialize message field [mode]
    bufferOffset = _serializer.bool(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinematicModeResponse
    let len;
    let data = new KinematicModeResponse(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tr5_robot_controller/KinematicModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3124ebba8ebedcd8ba82847d482ceb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KinematicModeResponse(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = false
    }

    return resolved;
    }
};

module.exports = {
  Request: KinematicModeRequest,
  Response: KinematicModeResponse,
  md5sum() { return 'ba21159b50b288da315c096c1a299273'; },
  datatype() { return 'tr5_robot_controller/KinematicMode'; }
};
