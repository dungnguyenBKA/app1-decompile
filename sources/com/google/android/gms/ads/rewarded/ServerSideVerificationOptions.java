package com.google.android.gms.ads.rewarded;

public class ServerSideVerificationOptions {
    private final String a;
    private final String b;

    public static final class Builder {
        private String a = "";
        private String b = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, null);
        }

        public final Builder setCustomData(String str) {
            this.b = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.a = str;
            return this;
        }
    }

    ServerSideVerificationOptions(Builder builder, b bVar) {
        this.a = builder.a;
        this.b = builder.b;
    }

    public String getCustomData() {
        return this.b;
    }

    public String getUserId() {
        return this.a;
    }
}
