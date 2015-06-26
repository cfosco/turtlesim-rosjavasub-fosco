package com.github.rosjava.rosjava_catkin_package_a.turtlesim_subscriber;


import org.apache.commons.logging.Log;
import org.ros.message.MessageListener;
import org.ros.namespace.GraphName;
import org.ros.node.AbstractNodeMain;
import org.ros.node.ConnectedNode;
import org.ros.node.NodeMain;
import org.ros.node.topic.Subscriber;
import geometry_msgs.Pose2D;


public class Listener extends AbstractNodeMain {

  @Override
  public GraphName getDefaultNodeName() {
    return GraphName.of("rosjava/listener");
  }

  @Override
  public void onStart(ConnectedNode connectedNode) {

    final Log log = connectedNode.getLog();

    Subscriber<geometry_msgs.Pose2D> subscriber = connectedNode.newSubscriber("bridge_topic", geometry_msgs.Pose2D._TYPE);

    subscriber.addMessageListener(new MessageListener<geometry_msgs.Pose2D>() {
      @Override
      public void onNewMessage(geometry_msgs.Pose2D message) {

	float distanceTravelled = DistanceHandler.updateDistanceTravelled((float)message.getX(), (float)message.getY());

	String orientation = OrientationHandler.updateOrientation((float)message.getTheta());
	
        log.info("orientation: " + orientation + ", distance travelled: "+ distanceTravelled);
      }
    });

  }
}
