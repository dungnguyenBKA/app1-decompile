package com.vungle.warren.downloader;

import android.text.TextUtils;
import com.vungle.warren.downloader.Downloader;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class DownloadRequest {
    private AtomicBoolean cancelled;
    public final String cookieString;
    final String id;
    public final int networkType;
    public final String path;
    public final boolean pauseOnConnectionLost;
    private final AtomicInteger priority;
    public final String url;

    public @interface Priority {
        public static final int CRITICAL = -2147483647;
        public static final int HIGH = 1;
        public static final int HIGHEST = 0;
        public static final int LOWEST = Integer.MAX_VALUE;
    }

    public DownloadRequest(String str, String str2) {
        this(3, 0, str, str2, false, null);
    }

    /* access modifiers changed from: package-private */
    public void cancel() {
        this.cancelled.set(true);
    }

    @Priority
    public int getPriority() {
        return this.priority.get();
    }

    /* access modifiers changed from: package-private */
    public boolean isCancelled() {
        return this.cancelled.get();
    }

    public void setPriority(@Priority int i) {
        this.priority.set(i);
    }

    public String toString() {
        StringBuilder q = ic.q("DownloadRequest{networkType=");
        q.append(this.networkType);
        q.append(", priority=");
        q.append(this.priority);
        q.append(", url='");
        ic.v(q, this.url, '\'', ", path='");
        ic.v(q, this.path, '\'', ", pauseOnConnectionLost=");
        q.append(this.pauseOnConnectionLost);
        q.append(", id='");
        ic.v(q, this.id, '\'', ", cookieString='");
        ic.v(q, this.cookieString, '\'', ", cancelled=");
        q.append(this.cancelled);
        q.append('}');
        return q.toString();
    }

    public DownloadRequest(String str, String str2, String str3) {
        this(3, 0, str, str2, false, str3);
    }

    public DownloadRequest(@Downloader.NetworkType int i, @Priority int i2, String str, String str2, boolean z, String str3) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.priority = atomicInteger;
        this.cancelled = new AtomicBoolean(false);
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Url or path is empty");
        }
        this.networkType = i;
        atomicInteger.set(i2);
        this.url = str;
        this.path = str2;
        this.id = UUID.nameUUIDFromBytes((str2 + "_" + str).getBytes()).toString();
        this.pauseOnConnectionLost = z;
        this.cookieString = str3;
    }
}
