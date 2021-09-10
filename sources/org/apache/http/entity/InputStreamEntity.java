package org.apache.http.entity;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.InputStream;
import java.io.OutputStream;

public class InputStreamEntity extends AbstractHttpEntity {
    private static final int BUFFER_SIZE = 2048;
    private final InputStream content;
    private final long length;

    public InputStreamEntity(InputStream inputStream, long j) {
        if (inputStream != null) {
            this.content = inputStream;
            this.length = j;
            return;
        }
        throw new IllegalArgumentException("Source input stream may not be null");
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() {
        this.content.close();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() {
        return this.content;
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
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) {
        if (outputStream != null) {
            InputStream inputStream = this.content;
            try {
                byte[] bArr = new byte[BUFFER_SIZE];
                long j = this.length;
                if (j < 0) {
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                    }
                } else {
                    while (true) {
                        if (j <= 0) {
                            break;
                        }
                        int read2 = inputStream.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j));
                        if (read2 == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read2);
                        j -= (long) read2;
                    }
                }
            } finally {
                inputStream.close();
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
