// Auto-generated. Do not edit!

// (in-package tr5_kinematics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DoForwardKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Joints = null;
    }
    else {
      if (initObj.hasOwnProperty('Joints')) {
        this.Joints = initObj.Joints
      }
      else {
        this.Joints = new sensor_msgs.msg.JointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoForwardKinematicsRequest
    // Serialize message field [Joints]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.Joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoForwardKinematicsRequest
    let len;
    let data = new DoForwardKinematicsRequest(null);
    // Deserialize message field [Joints]
    data.Joints = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.Joints);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tr5_kinematics/DoForwardKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a16d2a2ba05d89799791fc1a3a56530';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/JointState Joints
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    const resolved = new DoForwardKinematicsRequest(null);
    if (msg.Joints !== undefined) {
      resolved.Joints = sensor_msgs.msg.JointState.Resolve(msg.Joints)
    }
    else {
      resolved.Joints = new sensor_msgs.msg.JointState()
    }

    return resolved;
    }
};

class DoForwardKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Coordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('Coordinates')) {
        this.Coordinates = initObj.Coordinates
      }
      else {
        this.Coordinates = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DoForwardKinematicsResponse
    // Serialize message field [Coordinates]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.Coordinates, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DoForwardKinematicsResponse
    let len;
    let data = new DoForwardKinematicsResponse(null);
    // Deserialize message field [Coordinates]
    data.Coordinates = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tr5_kinematics/DoForwardKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd90918c3cbf1b30ba6e0f6a070767412';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose Coordinates
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DoForwardKinematicsResponse(null);
    if (msg.Coordinates !== undefined) {
      resolved.Coordinates = geometry_msgs.msg.Pose.Resolve(msg.Coordinates)
    }
    else {
      resolved.Coordinates = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: DoForwardKinematicsRequest,
  Response: DoForwardKinematicsResponse,
  md5sum() { return '217d3f8242b6548acd90c609a65b03ca'; },
  datatype() { return 'tr5_kinematics/DoForwardKinematics'; }
};
