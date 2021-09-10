package org.apache.http.impl.client;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.protocol.HTTP;

@NotThreadSafe
public class EntityEnclosingRequestWrapper extends RequestWrapper implements HttpEntityEnclosingRequest {
    private boolean consumed;
    private HttpEntity entity;

    /* access modifiers changed from: package-private */
    public class EntityWrapper extends HttpEntityWrapper {
        EntityWrapper(HttpEntity httpEntity) {
            super(httpEntity);
        }

        @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
        @Deprecated
        public void consumeContent() {
            EntityEnclosingRequestWrapper.this.consumed = true;
            super.consumeContent();
        }

        @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
        public InputStream getContent() {
            EntityEnclosingRequestWrapper.this.consumed = true;
            return super.getContent();
        }

        @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
        public void writeTo(OutputStream outputStream) {
            EntityEnclosingRequestWrapper.this.consumed = true;
            super.writeTo(outputStream);
        }
    }

    public EntityEnclosingRequestWrapper(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        super(httpEntityEnclosingRequest);
        setEntity(httpEntityEnclosingRequest.getEntity());
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public boolean expectContinue() {
        Header firstHeader = getFirstHeader("Expect");
        return firstHeader != null && HTTP.EXPECT_CONTINUE.equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public HttpEntity getEntity() {
        return this.entity;
    }

    @Override // org.apache.http.impl.client.RequestWrapper
    public boolean isRepeatable() {
        HttpEntity httpEntity = this.entity;
        return httpEntity == null || httpEntity.isRepeatable() || !this.consumed;
    }

    @Override // org.apache.http.HttpEntityEnclosingRequest
    public void setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity != null ? new EntityWrapper(httpEntity) : null;
        this.consumed = false;
    }
}
