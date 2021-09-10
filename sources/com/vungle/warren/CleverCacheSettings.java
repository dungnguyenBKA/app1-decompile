package com.vungle.warren;

import androidx.core.app.b;
import com.vungle.warren.model.JsonUtil;
import java.util.Objects;

public class CleverCacheSettings {
    static final boolean DEFAULT_ENABLED = true;
    static final long DEFAULT_TIMESTAMP = -1;
    static final String KEY_CLEVER_CACHE = "clever_cache";
    static final String KEY_ENABLED = "enabled";
    static final String KEY_TIMESTAMP = "clear_shared_cache_timestamp";
    @c70(KEY_ENABLED)
    private final boolean enabled;
    @c70(KEY_TIMESTAMP)
    private final long timestamp;

    private CleverCacheSettings(boolean z, long j) {
        this.enabled = z;
        this.timestamp = j;
    }

    static CleverCacheSettings deserializeFromString(String str) {
        if (str == null) {
            return null;
        }
        try {
            return fromJson((s60) b.P0(s60.class).cast(new k60().a().d(str, s60.class)));
        } catch (x60 unused) {
            return null;
        }
    }

    public static CleverCacheSettings fromJson(s60 s60) {
        if (!JsonUtil.hasNonNull(s60, "clever_cache")) {
            return null;
        }
        long j = -1;
        boolean z = DEFAULT_ENABLED;
        s60 p = s60.p("clever_cache");
        try {
            if (p.q(KEY_TIMESTAMP)) {
                j = p.n(KEY_TIMESTAMP).g();
            }
        } catch (NumberFormatException unused) {
        }
        if (p.q(KEY_ENABLED)) {
            p60 n = p.n(KEY_ENABLED);
            Objects.requireNonNull(n);
            if ((n instanceof u60) && "false".equalsIgnoreCase(n.h())) {
                z = false;
            }
        }
        return new CleverCacheSettings(z, j);
    }

    static CleverCacheSettings getDefault() {
        return new CleverCacheSettings(DEFAULT_ENABLED, -1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return DEFAULT_ENABLED;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CleverCacheSettings cleverCacheSettings = (CleverCacheSettings) obj;
        if (this.enabled == cleverCacheSettings.enabled && this.timestamp == cleverCacheSettings.timestamp) {
            return DEFAULT_ENABLED;
        }
        return false;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        long j = this.timestamp;
        return ((this.enabled ? 1 : 0) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public String serializeToString() {
        s60 s60 = new s60();
        j60 a = new k60().a();
        Class<?> cls = getClass();
        j80 j80 = new j80();
        a.k(this, cls, j80);
        s60.i("clever_cache", j80.C0());
        return s60.toString();
    }
}
