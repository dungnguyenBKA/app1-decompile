package com.bumptech.glide.load;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import org.apache.http.protocol.HTTP;

public interface g {
    public static final Charset a = Charset.forName(HTTP.UTF_8);

    void a(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
