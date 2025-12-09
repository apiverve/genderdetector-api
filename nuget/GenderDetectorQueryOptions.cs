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
        /// Example: John Mcdonald
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }

        /// <summary>
        /// The country code for the name (e.g., US)
        /// Example: US
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}
