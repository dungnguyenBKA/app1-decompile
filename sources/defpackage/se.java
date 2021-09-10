package defpackage;

/* renamed from: se  reason: default package */
public final class se implements ne<byte[]> {
    @Override // defpackage.ne
    public int a() {
        return 1;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.ne
    public int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // defpackage.ne
    public String getTag() {
        return "ByteArrayPool";
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.ne
    public byte[] newArray(int i) {
        return new byte[i];
    }
}
