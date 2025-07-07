module Firebase
  module Admin
    module Messaging
      # APNS-specific options that can be included in a {Message}.
      #
      # Refer to `APNS Documentation` for more information.
      # @see https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CommunicatingwithAPNs.html
      class APNSConfig
        # @return [Hash{Symbol,String => String}, nil]
        #   A collection of APNs headers. Header values must be strings.
        attr_accessor :headers

        # @return [APNSPayload, nil]
        #   An APNs payload to be included in the message.
        attr_accessor :payload

        # @return [APNSFCMOptions, nil]
        #   Options for features provided by the FCM SDK for iOS.
        attr_accessor :fcm_options

        # @return [String, nil]
        #   Live activity token to apply the updates to.
        attr_accessor :live_activity_token

        # Initializes an {APNSConfig}.
        #
        # @param [Hash{Symbol,String => String}, nil] headers
        #   A collection of APNs headers (optional).
        #   Header keys and values must be strings.
        # @param [APNSPayload, nil] payload
        #   An APNs payload to be included in the message (optional).
        # @param [APNSFCMOptions, nil] fcm_options
        #   Options for features provided by the FCM SDK for iOS (optional).
        # @param [String, nil] live_activity_token
        #   Live activity token to apply the updates to.
        def initialize(headers: nil, payload: nil, fcm_options: nil, live_activity_token: nil)
          self.headers = headers
          self.payload = payload
          self.fcm_options = fcm_options
          self.live_activity_token = live_activity_token
        end
      end
    end
  end
end
