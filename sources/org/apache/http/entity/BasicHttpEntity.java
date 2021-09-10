package org.apache.http.entity;

import java.io.InputStream;
import java.io.OutputStream;

public class BasicHttpEntity extends AbstractHttpEntity {
    private InputStream content;
    private long length = -1;

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() {
        InputStream inputStream = this.content;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        InputStream inputStream = this.content;
        if (inputStream != null) {
            return inputStream;
        }
        throw new IllegalStateException("Content has not been provided");
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.content != null;
    }

    public void setContent(InputStream inputStream) {
        this.content = inputStream;
    }

    public void setContentLength(long j) {
        this.length = j;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            InputStream content2 = getContent();
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = content2.read(bArr);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                    } else {
                        return;
                    }
                }
            } finally {
                content2.close();
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
