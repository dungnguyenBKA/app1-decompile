package com.bumptech.glide.load;

import java.io.InputStream;
import java.nio.ByteBuffer;

public interface ImageHeaderParser {

    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);
        
        private final boolean b;

        private ImageType(boolean z) {
            this.b = z;
        }

        public boolean hasAlpha() {
            return this.b;
        }
    }

    ImageType a(ByteBuffer byteBuffer);

    ImageType b(InputStream inputStream);

    int c(InputStream inputStream, oe oeVar);
}
