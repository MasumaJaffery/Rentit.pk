<?php
/**
 * This code was generated by
 * ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
 *  |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
 *  |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
 *
 * Twilio - Flex
 * This is the public Twilio REST API.
 *
 * NOTE: This class is auto generated by OpenAPI Generator.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace Twilio\Rest\FlexApi\V1;

use Twilio\Options;
use Twilio\Values;

abstract class WebChannelOptions
{
    /**
     * @param string $chatUniqueName The chat channel's unique name.
     * @param string $preEngagementData The pre-engagement data.
     * @return CreateWebChannelOptions Options builder
     */
    public static function create(
        
        string $chatUniqueName = Values::NONE,
        string $preEngagementData = Values::NONE

    ): CreateWebChannelOptions
    {
        return new CreateWebChannelOptions(
            $chatUniqueName,
            $preEngagementData
        );
    }




    /**
     * @param string $chatStatus
     * @param string $postEngagementData The post-engagement data.
     * @return UpdateWebChannelOptions Options builder
     */
    public static function update(
        
        string $chatStatus = Values::NONE,
        string $postEngagementData = Values::NONE

    ): UpdateWebChannelOptions
    {
        return new UpdateWebChannelOptions(
            $chatStatus,
            $postEngagementData
        );
    }

}

class CreateWebChannelOptions extends Options
    {
    /**
     * @param string $chatUniqueName The chat channel's unique name.
     * @param string $preEngagementData The pre-engagement data.
     */
    public function __construct(
        
        string $chatUniqueName = Values::NONE,
        string $preEngagementData = Values::NONE

    ) {
        $this->options['chatUniqueName'] = $chatUniqueName;
        $this->options['preEngagementData'] = $preEngagementData;
    }

    /**
     * The chat channel's unique name.
     *
     * @param string $chatUniqueName The chat channel's unique name.
     * @return $this Fluent Builder
     */
    public function setChatUniqueName(string $chatUniqueName): self
    {
        $this->options['chatUniqueName'] = $chatUniqueName;
        return $this;
    }

    /**
     * The pre-engagement data.
     *
     * @param string $preEngagementData The pre-engagement data.
     * @return $this Fluent Builder
     */
    public function setPreEngagementData(string $preEngagementData): self
    {
        $this->options['preEngagementData'] = $preEngagementData;
        return $this;
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string
    {
        $options = \http_build_query(Values::of($this->options), '', ' ');
        return '[Twilio.FlexApi.V1.CreateWebChannelOptions ' . $options . ']';
    }
}




class UpdateWebChannelOptions extends Options
    {
    /**
     * @param string $chatStatus
     * @param string $postEngagementData The post-engagement data.
     */
    public function __construct(
        
        string $chatStatus = Values::NONE,
        string $postEngagementData = Values::NONE

    ) {
        $this->options['chatStatus'] = $chatStatus;
        $this->options['postEngagementData'] = $postEngagementData;
    }

    /**
     * @param string $chatStatus
     * @return $this Fluent Builder
     */
    public function setChatStatus(string $chatStatus): self
    {
        $this->options['chatStatus'] = $chatStatus;
        return $this;
    }

    /**
     * The post-engagement data.
     *
     * @param string $postEngagementData The post-engagement data.
     * @return $this Fluent Builder
     */
    public function setPostEngagementData(string $postEngagementData): self
    {
        $this->options['postEngagementData'] = $postEngagementData;
        return $this;
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string
    {
        $options = \http_build_query(Values::of($this->options), '', ' ');
        return '[Twilio.FlexApi.V1.UpdateWebChannelOptions ' . $options . ']';
    }
}

