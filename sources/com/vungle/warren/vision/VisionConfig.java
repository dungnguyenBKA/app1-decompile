package com.vungle.warren.vision;

public class VisionConfig {
    @c70("aggregation_filters")
    public String[] aggregationFilters;
    @c70("aggregation_time_windows")
    public int[] aggregationTimeWindows;
    @c70("enabled")
    public boolean enabled;
    @c70("view_limit")
    public Limits viewLimit;

    public static class Limits {
        @c70("device")
        public int device;
        @c70("mobile")
        public int mobile;
        @c70("wifi")
        public int wifi;
    }
}
