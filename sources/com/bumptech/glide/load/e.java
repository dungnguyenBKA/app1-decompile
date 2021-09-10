package com.bumptech.glide.load;

import java.io.IOException;

public final class e extends IOException {
    public e(int i) {
        super(ic.f("Http request failed with status code: ", i), null);
    }

    public e(String str) {
        super(str, null);
    }

    public e(String str, int i) {
        super(str, null);
    }
}
