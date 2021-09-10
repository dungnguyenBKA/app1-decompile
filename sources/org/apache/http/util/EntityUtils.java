package org.apache.http.util;

import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;

public final class EntityUtils {
    private EntityUtils() {
    }

    public static void consume(HttpEntity httpEntity) {
        InputStream content;
        if (httpEntity != null && httpEntity.isStreaming() && (content = httpEntity.getContent()) != null) {
            content.close();
        }
    }

    public static String getContentCharSet(HttpEntity httpEntity) {
        NameValuePair parameterByName;
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        } else if (httpEntity.getContentType() == null) {
            return null;
        } else {
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            if (elements.length <= 0 || (parameterByName = elements[0].getParameterByName("charset")) == null) {
                return null;
            }
            return parameterByName.getValue();
        }
    }

    public static String getContentMimeType(HttpEntity httpEntity) {
        if (httpEntity == null) {
            throw new IllegalArgumentException("HTTP entity may not be null");
        } else if (httpEntity.getContentType() == null) {
            return null;
        } else {
            HeaderElement[] elements = httpEntity.getContentType().getElements();
            if (elements.length > 0) {
                return elements[0].getName();
            }
            return null;
        }
    }

    public static byte[] toByteArray(HttpEntity httpEntity) {
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                return null;
            }
            try {
                if (httpEntity.getContentLength() <= 2147483647L) {
                    int contentLength = (int) httpEntity.getContentLength();
                    if (contentLength < 0) {
                        contentLength = 4096;
                    }
                    ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(contentLength);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = content.read(bArr);
                        if (read == -1) {
                            return byteArrayBuffer.toByteArray();
                        }
                        byteArrayBuffer.append(bArr, 0, read);
                    }
                } else {
                    throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
                }
            } finally {
                content.close();
            }
        } else {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
    }

    public static String toString(HttpEntity httpEntity, String str) {
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                return null;
            }
            try {
                if (httpEntity.getContentLength() <= 2147483647L) {
                    int contentLength = (int) httpEntity.getContentLength();
                    if (contentLength < 0) {
                        contentLength = 4096;
                    }
                    String contentCharSet = getContentCharSet(httpEntity);
                    if (contentCharSet != null) {
                        str = contentCharSet;
                    }
                    if (str == null) {
                        str = "ISO-8859-1";
                    }
                    InputStreamReader inputStreamReader = new InputStreamReader(content, str);
                    CharArrayBuffer charArrayBuffer = new CharArrayBuffer(contentLength);
                    char[] cArr = new char[1024];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            return charArrayBuffer.toString();
                        }
                        charArrayBuffer.append(cArr, 0, read);
                    }
                } else {
                    throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
                }
            } finally {
                content.close();
            }
        } else {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
    }

    public static String toString(HttpEntity httpEntity) {
        return toString(httpEntity, null);
    }
}
