package com.facebook.ads.internal.exoplayer2.metadata.id3;

import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.facebook.ads.redexgen.X.C0551Hx;

public abstract class Id3Frame implements Metadata.Entry {
    public final String A00;

    public Id3Frame(String str) {
        this.A00 = (String) C0551Hx.A01(str);
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.A00;
    }
}
