using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GenderDetector
{
    /// <summary>
    /// Query options for the Gender Detector API
    /// </summary>
    public class GenderDetectorQueryOptions
    {
        /// <summary>
        /// The name for which you want to detect the gender
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// The country code for the name (e.g., US). Recorded and echoed back in the response, but detection does not yet vary by country - the same name returns the same gender whichever code you pass
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}
