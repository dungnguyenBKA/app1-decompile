package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzaau;

public final class VideoOptions {
    private final boolean a;
    private final boolean b;
    private final boolean c;

    public static final class Builder {
        private boolean a = true;
        private boolean b = false;
        private boolean c = false;

        public final VideoOptions build() {
            return new VideoOptions(this, null);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.b = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.a = z;
            return this;
        }
    }

    public VideoOptions(zzaau zzaau) {
        this.a = zzaau.zzadx;
        this.b = zzaau.zzady;
        this.c = zzaau.zzadz;
    }

    public final boolean getClickToExpandRequested() {
        return this.c;
    }

    public final boolean getCustomControlsRequested() {
        return this.b;
    }

    public final boolean getStartMuted() {
        return this.a;
    }

    VideoOptions(Builder builder, b bVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
    }
}
