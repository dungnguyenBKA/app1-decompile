package org.apache.http.client.entity;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public class GzipDecompressingEntity extends DecompressingEntity {
    public GzipDecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    public Header getContentEncoding() {
        return null;
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    public long getContentLength() {
        return -1;
    }

    /* access modifiers changed from: package-private */
    @Override // org.apache.http.client.entity.DecompressingEntity
    public InputStream getDecompressingInputStream(InputStream inputStream) {
        return new GZIPInputStream(inputStream);
    }
}
