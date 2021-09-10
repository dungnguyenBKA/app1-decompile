package org.apache.http.impl.io;

import org.apache.http.io.HttpTransportMetrics;

public class HttpTransportMetricsImpl implements HttpTransportMetrics {
    private long bytesTransferred = 0;

    @Override // org.apache.http.io.HttpTransportMetrics
    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public void incrementBytesTransferred(long j) {
        this.bytesTransferred += j;
    }

    @Override // org.apache.http.io.HttpTransportMetrics
    public void reset() {
        this.bytesTransferred = 0;
    }

    public void setBytesTransferred(long j) {
        this.bytesTransferred = j;
    }
}
