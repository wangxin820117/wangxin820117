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

class SampleViewsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sampler_type = null;
      this.num_samples = null;
      this.center = null;
      this.radius = null;
      this.length = null;
      this.min_theta = null;
      this.max_theta = null;
      this.delta_yaw = null;
      this.delta_pitch = null;
    }
    else {
      if (initObj.hasOwnProperty('sampler_type')) {
        this.sampler_type = initObj.sampler_type
      }
      else {
        this.sampler_type = '';
      }
      if (initObj.hasOwnProperty('num_samples')) {
        this.num_samples = initObj.num_samples
      }
      else {
        this.num_samples = 0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('min_theta')) {
        this.min_theta = initObj.min_theta
      }
      else {
        this.min_theta = 0.0;
      }
      if (initObj.hasOwnProperty('max_theta')) {
        this.max_theta = initObj.max_theta
      }
      else {
        this.max_theta = 0.0;
      }
      if (initObj.hasOwnProperty('delta_yaw')) {
        this.delta_yaw = initObj.delta_yaw
      }
      else {
        this.delta_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('delta_pitch')) {
        this.delta_pitch = initObj.delta_pitch
      }
      else {
        this.delta_pitch = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SampleViewsRequest
    // Serialize message field [sampler_type]
    bufferOffset = _serializer.string(obj.sampler_type, buffer, bufferOffset);
    // Serialize message field [num_samples]
    bufferOffset = _serializer.int32(obj.num_samples, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [min_theta]
    bufferOffset = _serializer.float32(obj.min_theta, buffer, bufferOffset);
    // Serialize message field [max_theta]
    bufferOffset = _serializer.float32(obj.max_theta, buffer, bufferOffset);
    // Serialize message field [delta_yaw]
    bufferOffset = _serializer.float32(obj.delta_yaw, buffer, bufferOffset);
    // Serialize message field [delta_pitch]
    bufferOffset = _serializer.float32(obj.delta_pitch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SampleViewsRequest
    let len;
    let data = new SampleViewsRequest(null);
    // Deserialize message field [sampler_type]
    data.sampler_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num_samples]
    data.num_samples = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_theta]
    data.min_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_theta]
    data.max_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delta_yaw]
    data.delta_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delta_pitch]
    data.delta_pitch = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sampler_type);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/SampleViewsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '223853558c0f335c5cf1ea3952fb2976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sampler_type
    int32 num_samples
    geometry_msgs/Point center
    float32 radius
    float32 length
    float32 min_theta
    float32 max_theta
    float32 delta_yaw
    float32 delta_pitch
    
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
    const resolved = new SampleViewsRequest(null);
    if (msg.sampler_type !== undefined) {
      resolved.sampler_type = msg.sampler_type;
    }
    else {
      resolved.sampler_type = ''
    }

    if (msg.num_samples !== undefined) {
      resolved.num_samples = msg.num_samples;
    }
    else {
      resolved.num_samples = 0
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.min_theta !== undefined) {
      resolved.min_theta = msg.min_theta;
    }
    else {
      resolved.min_theta = 0.0
    }

    if (msg.max_theta !== undefined) {
      resolved.max_theta = msg.max_theta;
    }
    else {
      resolved.max_theta = 0.0
    }

    if (msg.delta_yaw !== undefined) {
      resolved.delta_yaw = msg.delta_yaw;
    }
    else {
      resolved.delta_yaw = 0.0
    }

    if (msg.delta_pitch !== undefined) {
      resolved.delta_pitch = msg.delta_pitch;
    }
    else {
      resolved.delta_pitch = 0.0
    }

    return resolved;
    }
};

class SampleViewsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.view_samples = null;
    }
    else {
      if (initObj.hasOwnProperty('view_samples')) {
        this.view_samples = initObj.view_samples
      }
      else {
        this.view_samples = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SampleViewsResponse
    // Serialize message field [view_samples]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.view_samples, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SampleViewsResponse
    let len;
    let data = new SampleViewsResponse(null);
    // Deserialize message field [view_samples]
    data.view_samples = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.view_samples);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/SampleViewsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48ce1354a93a015dbf65797167028470';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray view_samples
    
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
    const resolved = new SampleViewsResponse(null);
    if (msg.view_samples !== undefined) {
      resolved.view_samples = geometry_msgs.msg.PoseArray.Resolve(msg.view_samples)
    }
    else {
      resolved.view_samples = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: SampleViewsRequest,
  Response: SampleViewsResponse,
  md5sum() { return 'b67eb928b26db8cb27e2c57ed968be8b'; },
  datatype() { return 'flexcraft_msgs/SampleViews'; }
};
