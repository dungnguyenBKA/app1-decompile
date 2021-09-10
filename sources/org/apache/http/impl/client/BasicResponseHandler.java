package org.apache.http.impl.client;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.util.EntityUtils;

@Immutable
public class BasicResponseHandler implements ResponseHandler<String> {
    @Override // org.apache.http.client.ResponseHandler
    public String handleResponse(HttpResponse httpResponse) {
        StatusLine statusLine = httpResponse.getStatusLine();
        if (statusLine.getStatusCode() < 300) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity == null) {
                return null;
            }
            return EntityUtils.toString(entity);
        }
        throw new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase());
    }
}
