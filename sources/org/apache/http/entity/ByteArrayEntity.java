package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class ByteArrayEntity extends AbstractHttpEntity implements Cloneable {
    protected final byte[] content;

    public ByteArrayEntity(byte[] bArr) {
        if (bArr != null) {
            this.content = bArr;
            return;
        }
        throw new IllegalArgumentException("Source byte array may not be null");
    }

    @Override // java.lang.Object
    public Object clone() {
        return super.clone();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return new ByteArrayInputStream(this.content);
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return (long) this.content.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            outputStream.write(this.content);
            outputStream.flush();
            return;
        }
        throw new IllegalArgumentException("Output stream may not be null");
    }
}
