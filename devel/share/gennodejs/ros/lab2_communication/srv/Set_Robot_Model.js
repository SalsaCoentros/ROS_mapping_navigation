// Auto-generated. Do not edit!

// (in-package lab2_communication.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let robot_id = require('../msg/robot_id.js');

//-----------------------------------------------------------

class Set_Robot_ModelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model = null;
    }
    else {
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Set_Robot_ModelRequest
    // Serialize message field [model]
    bufferOffset = _serializer.string(obj.model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Set_Robot_ModelRequest
    let len;
    let data = new Set_Robot_ModelRequest(null);
    // Deserialize message field [model]
    data.model = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.model.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab2_communication/Set_Robot_ModelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0147e4f36cba5cda7fa39c089e493413';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string model
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Set_Robot_ModelRequest(null);
    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = ''
    }

    return resolved;
    }
};

class Set_Robot_ModelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotID = null;
    }
    else {
      if (initObj.hasOwnProperty('robotID')) {
        this.robotID = initObj.robotID
      }
      else {
        this.robotID = new robot_id();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Set_Robot_ModelResponse
    // Serialize message field [robotID]
    bufferOffset = robot_id.serialize(obj.robotID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Set_Robot_ModelResponse
    let len;
    let data = new Set_Robot_ModelResponse(null);
    // Deserialize message field [robotID]
    data.robotID = robot_id.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robot_id.getMessageSize(object.robotID);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lab2_communication/Set_Robot_ModelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c6e7b025d512f0c651bae0b3614dcd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lab2_communication/robot_id robotID
    
    ================================================================================
    MSG: lab2_communication/robot_id
    Header header
    int8 id
    string model
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Set_Robot_ModelResponse(null);
    if (msg.robotID !== undefined) {
      resolved.robotID = robot_id.Resolve(msg.robotID)
    }
    else {
      resolved.robotID = new robot_id()
    }

    return resolved;
    }
};

module.exports = {
  Request: Set_Robot_ModelRequest,
  Response: Set_Robot_ModelResponse,
  md5sum() { return '51cc362f6d06def3fd71b2dbe3614cc8'; },
  datatype() { return 'lab2_communication/Set_Robot_Model'; }
};
