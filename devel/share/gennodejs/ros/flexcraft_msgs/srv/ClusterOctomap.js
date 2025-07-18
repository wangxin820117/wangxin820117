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

class ClusterOctomapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterOctomapRequest
    // Serialize message field [cloud]
    // Serialize the length for message field [cloud]
    bufferOffset = _serializer.uint32(obj.cloud.length, buffer, bufferOffset);
    obj.cloud.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterOctomapRequest
    let len;
    let data = new ClusterOctomapRequest(null);
    // Deserialize message field [cloud]
    // Deserialize array length for message field [cloud]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cloud = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cloud[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.cloud.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/ClusterOctomapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8c6ea05d9d0285735642845df1b7b8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Octomap converted to points
    geometry_msgs/Point[] cloud
    
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
    const resolved = new ClusterOctomapRequest(null);
    if (msg.cloud !== undefined) {
      resolved.cloud = new Array(msg.cloud.length);
      for (let i = 0; i < resolved.cloud.length; ++i) {
        resolved.cloud[i] = geometry_msgs.msg.Point.Resolve(msg.cloud[i]);
      }
    }
    else {
      resolved.cloud = []
    }

    return resolved;
    }
};

class ClusterOctomapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poses = null;
    }
    else {
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterOctomapResponse
    // Serialize message field [poses]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.poses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterOctomapResponse
    let len;
    let data = new ClusterOctomapResponse(null);
    // Deserialize message field [poses]
    data.poses = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.poses);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flexcraft_msgs/ClusterOctomapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '047f8def55b3621b994985089fbb7238';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Pose of the clustered objects
    geometry_msgs/PoseArray poses
    
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
    const resolved = new ClusterOctomapResponse(null);
    if (msg.poses !== undefined) {
      resolved.poses = geometry_msgs.msg.PoseArray.Resolve(msg.poses)
    }
    else {
      resolved.poses = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: ClusterOctomapRequest,
  Response: ClusterOctomapResponse,
  md5sum() { return '0ff5ab34ceb3d552b78858a9555a8a79'; },
  datatype() { return 'flexcraft_msgs/ClusterOctomap'; }
};
