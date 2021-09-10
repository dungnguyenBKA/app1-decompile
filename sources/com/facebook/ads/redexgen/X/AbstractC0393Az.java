package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: com.facebook.ads.redexgen.X.Az  reason: case insensitive filesystem */
public interface AbstractC0393Az {
    public static final ByteBuffer A00 = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    boolean A48(int i, int i2, int i3) throws C0392Ay;

    ByteBuffer A6p();

    int A6q();

    int A6r();

    int A6s();

    boolean A7v();

    boolean A7z();

    void ACh();

    void ACi(ByteBuffer byteBuffer);

    void flush();

    void reset();
}
