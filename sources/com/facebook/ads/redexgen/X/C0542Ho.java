package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.google.ads.ADRequestList;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.TreeSet;

/* renamed from: com.facebook.ads.redexgen.X.Ho  reason: case insensitive filesystem */
public final class C0542Ho {
    public static byte[] A05;
    public static String[] A06;
    public C1107bc A00 = C1107bc.A04;
    public boolean A01;
    public final int A02;
    public final String A03;
    public final TreeSet<C1109be> A04 = new TreeSet<>();

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{70, 0, 7, 15, 10, 3, 2, 72, 58, 110, 117, 58, 0, 55, 60, 51, 63, 59, 60, 53, 114, 61, 52, 114};
    }

    public static void A03() {
        A06 = new String[]{"MBceJWRKAgeQJNY3ZRBdRhYJgpL3jkFQ", "518xlpwWcjlWASul8lHAahT8PqQVPF3u", "9RLjFZMlaqPSYVxgrCr3N29CAF4vaCFh", "Nd9PnywG3g8LluWsmNbg8PXBjZKSlX8G", ADRequestList.SELF, "C1TdeuC5gtnvKYkq95Rq", "MkXsOhuicHq9DXlwRCZefot2VxsvXJH1", "VJm3srbtmlXEw3gKHWc"};
    }

    public C0542Ho(int i, String str) {
        this.A02 = i;
        this.A03 = str;
    }

    /* JADX INFO: Multiple debug info for r0v7 com.facebook.ads.redexgen.X.Ht: [D('length' long), D('mutations' com.facebook.ads.redexgen.X.Ht)] */
    public static C0542Ho A00(int id, DataInputStream dataInputStream) throws IOException {
        C0542Ho ho = new C0542Ho(dataInputStream.readInt(), dataInputStream.readUTF());
        if (id < 2) {
            long readLong = dataInputStream.readLong();
            C0547Ht mutations = new C0547Ht();
            C0546Hs.A05(mutations, readLong);
            ho.A0G(mutations);
        } else {
            C1107bc A002 = C1107bc.A00(dataInputStream);
            if (A06[4].length() != 13) {
                A06[1] = "w2ExrNvXNhLYBLEt12rGyqcfRXmaXRhw";
                ho.A00 = A002;
            } else {
                throw new RuntimeException();
            }
        }
        return ho;
    }

    public final int A04(int result) {
        int hashCode = (this.A02 * 31) + this.A03.hashCode();
        if (result >= 2) {
            return (hashCode * 31) + this.A00.hashCode();
        }
        long A002 = C0546Hs.A00(this.A00);
        return (hashCode * 31) + ((int) ((A002 >>> 32) ^ A002));
    }

    public final long A05(long queryEndPosition, long currentEndPosition) {
        C1109be A07 = A07(queryEndPosition);
        if (A07.A01()) {
            long j = -Math.min(A07.A02() ? Long.MAX_VALUE : A07.A01, currentEndPosition);
            if (A06[3].charAt(14) != 'W') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[7] = "ZNj15xTvoSD0UBJTiXr";
            strArr[5] = "u99g5dbJfvVcRXaISwTW";
            return j;
        }
        long j2 = queryEndPosition + currentEndPosition;
        long j3 = A07.A02 + A07.A01;
        if (j3 < j2) {
            for (C1109be beVar : this.A04.tailSet(A07, false)) {
                if (beVar.A02 > j3) {
                    break;
                }
                j3 = Math.max(j3, beVar.A02 + beVar.A01);
                if (j3 >= j2) {
                    break;
                }
            }
        }
        return Math.min(j3 - queryEndPosition, currentEndPosition);
    }

    public final AbstractC0545Hr A06() {
        return this.A00;
    }

    public final C1109be A07(long j) {
        C1109be A012 = C1109be.A01(this.A03, j);
        C1109be floor = this.A04.floor(A012);
        if (floor != null && floor.A02 + floor.A01 > j) {
            return floor;
        }
        C1109be ceiling = this.A04.ceiling(A012);
        if (ceiling == null) {
            return C1109be.A02(this.A03, j);
        }
        return C1109be.A03(this.A03, j, ceiling.A02 - j);
    }

    public final C1109be A08(C1109be beVar) throws C0533Hf {
        C0551Hx.A04(this.A04.remove(beVar));
        C1109be A08 = beVar.A08(this.A02);
        if (beVar.A03.renameTo(A08.A03)) {
            this.A04.add(A08);
            return A08;
        }
        throw new C0533Hf(A01(12, 12, 78) + beVar.A03 + A01(8, 4, 6) + A08.A03 + A01(0, 8, 122));
    }

    public final TreeSet<C1109be> A09() {
        return this.A04;
    }

    public final void A0A(C1109be beVar) {
        this.A04.add(beVar);
    }

    public final void A0B(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.A02);
        dataOutputStream.writeUTF(this.A03);
        this.A00.A0A(dataOutputStream);
    }

    public final void A0C(boolean z) {
        this.A01 = z;
    }

    public final boolean A0D() {
        return this.A04.isEmpty();
    }

    public final boolean A0E() {
        return this.A01;
    }

    public final boolean A0F(C0539Hl hl) {
        if (!this.A04.remove(hl)) {
            return false;
        }
        hl.A03.delete();
        return true;
    }

    public final boolean A0G(C0547Ht ht) {
        C1107bc bcVar = this.A00;
        this.A00 = this.A00.A09(ht);
        return !this.A00.equals(bcVar);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0542Ho ho = (C0542Ho) obj;
        if (this.A02 == ho.A02 && this.A03.equals(ho.A03)) {
            TreeSet<C1109be> treeSet = this.A04;
            if (A06[4].length() != 13) {
                A06[4] = "qw9AeUbTiw";
                if (!treeSet.equals(ho.A04) || !this.A00.equals(ho.A00)) {
                    return false;
                }
                return true;
            }
            throw new RuntimeException();
        }
        return false;
    }

    public final int hashCode() {
        return (A04(Integer.MAX_VALUE) * 31) + this.A04.hashCode();
    }
}
