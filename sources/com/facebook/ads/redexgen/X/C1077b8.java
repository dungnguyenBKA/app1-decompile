package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.b8  reason: case insensitive filesystem */
public final class C1077b8 implements HI {
    public static byte[] A07;
    public static String[] A08;
    public long A00;
    public AssetFileDescriptor A01;
    public Uri A02;
    public FileInputStream A03;
    public boolean A04;
    public final ContentResolver A05;
    public final AbstractC0531Hd<? super C1077b8> A06;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 116);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-38, 6, 12, 3, -5, -73, 5, 6, 11, -73, 6, 7, -4, 5, -73, -3, 0, 3, -4, -73, -5, -4, 10, -6, 9, 0, 7, 11, 6, 9, -73, -3, 6, 9, -47, -73, -14};
    }

    public static void A02() {
        A08 = new String[]{"XY5JZk6rXZ0NPH7SICFbrzLAUaQN4bdH", "HnCNMjQ424yFS", "kyBc0", "GnRsDPDWJf0qkzwG5UAakx0LVXBsKD8t", "8DLCIs9NQKYqN", "T4UYq1MMo7qynT2Sse3Gz88uK5Ayy8ub", "yyLccmqAJUyLoqB1F9xK1icYlgZtX35P", "UgvPXgEXHuOjKzkqR3R9kUCYtrFgRRdg"};
    }

    public C1077b8(Context context, AbstractC0531Hd<? super C1077b8> hd) {
        this.A05 = context.getContentResolver();
        this.A06 = hd;
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final Uri A7R() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final long ACC(HM hm) throws HE {
        try {
            this.A02 = hm.A04;
            this.A01 = this.A05.openAssetFileDescriptor(this.A02, A00(36, 1, 12));
            if (this.A01 != null) {
                this.A03 = new FileInputStream(this.A01.getFileDescriptor());
                long startOffset = this.A01.getStartOffset();
                long skip = this.A03.skip(hm.A03 + startOffset) - startOffset;
                int i = (skip > hm.A03 ? 1 : (skip == hm.A03 ? 0 : -1));
                String[] strArr = A08;
                if (strArr[1].length() != strArr[4].length()) {
                    throw new RuntimeException();
                }
                A08[2] = "hKUpJ";
                if (i == 0) {
                    long assetFileDescriptorLength = -1;
                    if (hm.A02 != -1) {
                        this.A00 = hm.A02;
                    } else {
                        long length = this.A01.getLength();
                        if (length == -1) {
                            FileChannel channel = this.A03.getChannel();
                            long size = channel.size();
                            if (size != 0) {
                                assetFileDescriptorLength = size - channel.position();
                            }
                            this.A00 = assetFileDescriptorLength;
                        } else {
                            this.A00 = length - skip;
                        }
                    }
                    this.A04 = true;
                    AbstractC0531Hd<? super C1077b8> hd = this.A06;
                    if (hd != null) {
                        hd.ABs(this, hm);
                    }
                    return this.A00;
                }
                throw new EOFException();
            }
            throw new FileNotFoundException(A00(0, 36, 35) + this.A02);
        } catch (IOException e) {
            throw new HE(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final void close() throws HE {
        this.A02 = null;
        try {
            if (this.A03 != null) {
                this.A03.close();
            }
            this.A03 = null;
            try {
                if (this.A01 != null) {
                    this.A01.close();
                }
                this.A01 = null;
                if (this.A04) {
                    this.A04 = false;
                    AbstractC0531Hd<? super C1077b8> hd = this.A06;
                    if (hd != null) {
                        hd.ABr(this);
                    }
                }
            } catch (IOException e) {
                throw new HE(e);
            } catch (Throwable th) {
                this.A01 = null;
                if (this.A04) {
                    this.A04 = false;
                    AbstractC0531Hd<? super C1077b8> hd2 = this.A06;
                    if (hd2 != null) {
                        hd2.ABr(this);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new HE(e2);
        } catch (Throwable th2) {
            this.A03 = null;
            try {
                if (this.A01 != null) {
                    this.A01.close();
                }
                this.A01 = null;
                if (this.A04) {
                    this.A04 = false;
                    String[] strArr = A08;
                    if (strArr[6].charAt(21) != strArr[3].charAt(21)) {
                        String[] strArr2 = A08;
                        strArr2[5] = "49IvJFCSRSvhrewf7IAXf1OPFzRU50IL";
                        strArr2[0] = "4e2AtDz0XDbCK0xcLVm9895RacU2kPwa";
                        AbstractC0531Hd<? super C1077b8> hd3 = this.A06;
                        if (hd3 != null) {
                            hd3.ABr(this);
                        }
                    }
                    throw new RuntimeException();
                }
                throw th2;
            } catch (IOException e3) {
                throw new HE(e3);
            } catch (Throwable th3) {
                if (A08[2].length() == 5) {
                    String[] strArr3 = A08;
                    strArr3[6] = "kTWz6VteXXEhzWgbUko802OKji9Q57bF";
                    strArr3[3] = "6Ww6RN6r5MWdHFclCOICUvV4AoOZijgl";
                    this.A01 = null;
                    if (this.A04) {
                        this.A04 = false;
                        AbstractC0531Hd<? super C1077b8> hd4 = this.A06;
                        if (hd4 != null) {
                            hd4.ABr(this);
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    /* JADX INFO: Multiple debug info for r8v0 'this'  com.facebook.ads.redexgen.X.b8: [D('bytesRead' int), D('bytesToRead' int)] */
    @Override // com.facebook.ads.redexgen.X.HI
    public final int read(byte[] bArr, int i, int i2) throws HE {
        if (i2 == 0) {
            return 0;
        }
        long j = this.A00;
        if (A08[7].charAt(11) != 'j') {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[1] = "ibErvL6ImcJTe";
        strArr[4] = "i4reTFCBluewh";
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, (long) i2);
            } catch (IOException e) {
                throw new HE(e);
            }
        }
        int read = this.A03.read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.A00;
            if (j2 != -1) {
                this.A00 = j2 - ((long) read);
            }
            AbstractC0531Hd<? super C1077b8> hd = this.A06;
            if (hd != null) {
                hd.A9f(this, read);
            }
            return read;
        } else if (this.A00 == -1) {
            return -1;
        } else {
            throw new HE(new EOFException());
        }
    }
}
