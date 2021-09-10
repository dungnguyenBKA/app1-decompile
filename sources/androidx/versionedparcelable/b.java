package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;

class b extends a {
    private final SparseIntArray d;
    private final Parcel e;
    private final int f;
    private final int g;
    private final String h;
    private int i;
    private int j;
    private int k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new x(), new x(), new x());
    }

    @Override // androidx.versionedparcelable.a
    public void B(int i2) {
        this.e.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.a
    public void D(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void F(String str) {
        this.e.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a() {
        int i2 = this.i;
        if (i2 >= 0) {
            int i3 = this.d.get(i2);
            int dataPosition = this.e.dataPosition();
            this.e.setDataPosition(i3);
            this.e.writeInt(dataPosition - i3);
            this.e.setDataPosition(dataPosition);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.versionedparcelable.a
    public a b() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i2 = this.j;
        if (i2 == this.f) {
            i2 = this.g;
        }
        return new b(parcel, dataPosition, i2, ic.l(new StringBuilder(), this.h, "  "), this.a, this.b, this.c);
    }

    @Override // androidx.versionedparcelable.a
    public boolean f() {
        return this.e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.a
    public byte[] h() {
        int readInt = this.e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.e.readByteArray(bArr);
        return bArr;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.versionedparcelable.a
    public CharSequence j() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // androidx.versionedparcelable.a
    public boolean l(int i2) {
        while (this.j < this.g) {
            int i3 = this.k;
            if (i3 == i2) {
                return true;
            }
            if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            this.e.setDataPosition(this.j);
            int readInt = this.e.readInt();
            this.k = this.e.readInt();
            this.j += readInt;
        }
        if (this.k == i2) {
            return true;
        }
        return false;
    }

    @Override // androidx.versionedparcelable.a
    public int m() {
        return this.e.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public <T extends Parcelable> T o() {
        return (T) this.e.readParcelable(b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public String q() {
        return this.e.readString();
    }

    @Override // androidx.versionedparcelable.a
    public void u(int i2) {
        a();
        this.i = i2;
        this.d.put(i2, this.e.dataPosition());
        this.e.writeInt(0);
        this.e.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.a
    public void v(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.a
    public void x(byte[] bArr) {
        if (bArr != null) {
            this.e.writeInt(bArr.length);
            this.e.writeByteArray(bArr);
            return;
        }
        this.e.writeInt(-1);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.versionedparcelable.a
    public void z(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    private b(Parcel parcel, int i2, int i3, String str, x<String, Method> xVar, x<String, Method> xVar2, x<String, Class> xVar3) {
        super(xVar, xVar2, xVar3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.e = parcel;
        this.f = i2;
        this.g = i3;
        this.j = i2;
        this.h = str;
    }
}
