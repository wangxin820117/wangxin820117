// Auto-generated. Do not edit!

// (in-package flexcraft_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetPclRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPclRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPclRequest
    let len;
    let data = new GetPclRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/GetPclRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPclRequest(null);
    return resolved;
    }
};

class GetPclResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cloud = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPclResponse
    // Serialize message field [cloud]
    // Serialize the length for message field [cloud]
    bufferOffset = _serializer.uint32(obj.cloud.length, buffer, bufferOffset);
    obj.cloud.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPclResponse
    let len;
    let data = new GetPclResponse(null);
    // Deserialize message field [cloud]
    // Deserialize array length for message field [cloud]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cloud = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cloud[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.cloud.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/GetPclResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6675bded5f9acf2f2266e0dd468b6db0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] cloud
    bool success
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPclResponse(null);
    if (msg.cloud !== undefined) {
      resolved.cloud = new Array(msg.cloud.length);
      for (let i = 0; i < resolved.cloud.length; ++i) {
        resolved.cloud[i] = geometry_msgs.msg.Point.Resolve(msg.cloud[i]);
      }
    }
    else {
      resolved.cloud = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPclRequest,
  Response: GetPclResponse,
  md5sum() { return '6675bded5f9acf2f2266e0dd468b6db0'; },
  datatype() { return 'flexcraft_msgs/GetPcl'; }
};
