package com.vungle.warren;

public class SessionData {
    private long initTime;
    private long timeout;

    public long getInitTimeStamp() {
        return this.initTime;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public void setInitTimeStamp(long j) {
        this.initTime = j;
    }

    public void setTimeout(long j) {
        this.timeout = j;
    }
}
