package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;

public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    private final boolean a;
    private final int b;
    private final boolean c;
    private final int d;
    private final VideoOptions e;
    private final boolean f;

    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        private boolean a = false;
        private int b = 0;
        private boolean c = false;
        private VideoOptions d;
        private int e = 1;
        private boolean f = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this, null);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.e = i;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.b = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.f = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.a = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.d = videoOptions;
            return this;
        }
    }

    public @interface NativeMediaAspectRatio {
    }

    NativeAdOptions(Builder builder, a aVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.e;
        this.e = builder.d;
        this.f = builder.f;
    }

    public final int getAdChoicesPlacement() {
        return this.d;
    }

    public final int getMediaAspectRatio() {
        return this.b;
    }

    public final VideoOptions getVideoOptions() {
        return this.e;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.c;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.a;
    }

    public final boolean zzjt() {
        return this.f;
    }
}
