// Auto-generated. Do not edit!

// (in-package flexcraft_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ComputeNBVRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.candidates = null;
      this.bbx_centers = null;
      this.bbx_sizes = null;
      this.class_id = null;
    }
    else {
      if (initObj.hasOwnProperty('candidates')) {
        this.candidates = initObj.candidates
      }
      else {
        this.candidates = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('bbx_centers')) {
        this.bbx_centers = initObj.bbx_centers
      }
      else {
        this.bbx_centers = [];
      }
      if (initObj.hasOwnProperty('bbx_sizes')) {
        this.bbx_sizes = initObj.bbx_sizes
      }
      else {
        this.bbx_sizes = [];
      }
      if (initObj.hasOwnProperty('class_id')) {
        this.class_id = initObj.class_id
      }
      else {
        this.class_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeNBVRequest
    // Serialize message field [candidates]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.candidates, buffer, bufferOffset);
    // Serialize message field [bbx_centers]
    // Serialize the length for message field [bbx_centers]
    bufferOffset = _serializer.uint32(obj.bbx_centers.length, buffer, bufferOffset);
    obj.bbx_centers.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bbx_sizes]
    // Serialize the length for message field [bbx_sizes]
    bufferOffset = _serializer.uint32(obj.bbx_sizes.length, buffer, bufferOffset);
    obj.bbx_sizes.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [class_id]
    bufferOffset = _serializer.int32(obj.class_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeNBVRequest
    let len;
    let data = new ComputeNBVRequest(null);
    // Deserialize message field [candidates]
    data.candidates = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbx_centers]
    // Deserialize array length for message field [bbx_centers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bbx_centers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bbx_centers[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bbx_sizes]
    // Deserialize array length for message field [bbx_sizes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bbx_sizes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bbx_sizes[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [class_id]
    data.class_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.candidates);
    length += 24 * object.bbx_centers.length;
    length += 24 * object.bbx_sizes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/ComputeNBVRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbfb37c94fd0934978627014d83729ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray candidates
    geometry_msgs/Point[] bbx_centers
    geometry_msgs/Point[] bbx_sizes
    int32 class_id
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    const resolved = new ComputeNBVRequest(null);
    if (msg.candidates !== undefined) {
      resolved.candidates = geometry_msgs.msg.PoseArray.Resolve(msg.candidates)
    }
    else {
      resolved.candidates = new geometry_msgs.msg.PoseArray()
    }

    if (msg.bbx_centers !== undefined) {
      resolved.bbx_centers = new Array(msg.bbx_centers.length);
      for (let i = 0; i < resolved.bbx_centers.length; ++i) {
        resolved.bbx_centers[i] = geometry_msgs.msg.Point.Resolve(msg.bbx_centers[i]);
      }
    }
    else {
      resolved.bbx_centers = []
    }

    if (msg.bbx_sizes !== undefined) {
      resolved.bbx_sizes = new Array(msg.bbx_sizes.length);
      for (let i = 0; i < resolved.bbx_sizes.length; ++i) {
        resolved.bbx_sizes[i] = geometry_msgs.msg.Point.Resolve(msg.bbx_sizes[i]);
      }
    }
    else {
      resolved.bbx_sizes = []
    }

    if (msg.class_id !== undefined) {
      resolved.class_id = msg.class_id;
    }
    else {
      resolved.class_id = 0
    }

    return resolved;
    }
};

class ComputeNBVResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nbv_pose = null;
      this.nbv_index = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('nbv_pose')) {
        this.nbv_pose = initObj.nbv_pose
      }
      else {
        this.nbv_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('nbv_index')) {
        this.nbv_index = initObj.nbv_index
      }
      else {
        this.nbv_index = 0;
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
    // Serializes a message object of type ComputeNBVResponse
    // Serialize message field [nbv_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.nbv_pose, buffer, bufferOffset);
    // Serialize message field [nbv_index]
    bufferOffset = _serializer.int32(obj.nbv_index, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeNBVResponse
    let len;
    let data = new ComputeNBVResponse(null);
    // Deserialize message field [nbv_pose]
    data.nbv_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [nbv_index]
    data.nbv_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/ComputeNBVResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'feeb8d2b0d0525de437e3fe9d317f4c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose nbv_pose
    int32 nbv_index
    bool success
    
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
    const resolved = new ComputeNBVResponse(null);
    if (msg.nbv_pose !== undefined) {
      resolved.nbv_pose = geometry_msgs.msg.Pose.Resolve(msg.nbv_pose)
    }
    else {
      resolved.nbv_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.nbv_index !== undefined) {
      resolved.nbv_index = msg.nbv_index;
    }
    else {
      resolved.nbv_index = 0
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
  Request: ComputeNBVRequest,
  Response: ComputeNBVResponse,
  md5sum() { return 'ce14f1e75e40af74df5ebd698c79385b'; },
  datatype() { return 'flexcraft_msgs/ComputeNBV'; }
};
