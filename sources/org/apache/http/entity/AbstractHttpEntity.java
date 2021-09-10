package org.apache.http.entity;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public abstract class AbstractHttpEntity implements HttpEntity {
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntity() {
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() {
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.contentType;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.chunked;
    }

    public void setChunked(boolean z) {
        this.chunked = z;
    }

    public void setContentEncoding(Header header) {
        this.contentEncoding = header;
    }

    public void setContentType(Header header) {
        this.contentType = header;
    }

    public void setContentEncoding(String str) {
        setContentEncoding(str != null ? new BasicHeader("Content-Encoding", str) : null);
    }

    public void setContentType(String str) {
        setContentType(str != null ? new BasicHeader("Content-Type", str) : null);
    }
}
