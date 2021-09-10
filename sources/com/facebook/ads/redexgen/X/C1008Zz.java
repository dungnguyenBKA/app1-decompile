package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Zz  reason: case insensitive filesystem */
public final class C1008Zz implements AbstractC0449Du {
    /* JADX INFO: Multiple debug info for r0v1 java.nio.ByteBuffer: [D('data' byte[]), D('buffer' java.nio.ByteBuffer)] */
    /* JADX INFO: Multiple debug info for r0v2 int: [D('data' byte[]), D('size' int)] */
    @Override // com.facebook.ads.redexgen.X.AbstractC0449Du
    public final Metadata A4g(DW dw) {
        ByteBuffer buffer = dw.A01;
        byte[] array = buffer.array();
        int size = buffer.limit();
        IM im = new IM(array, size);
        String A0R = im.A0R();
        String A0R2 = im.A0R();
        long A0N = im.A0N();
        long timescale = C0556Ic.A0F(im.A0N(), 1000000, A0N);
        return new Metadata(new EventMessage(A0R, A0R2, C0556Ic.A0F(im.A0N(), 1000, A0N), im.A0N(), Arrays.copyOfRange(array, im.A07(), size), timescale));
    }
}
