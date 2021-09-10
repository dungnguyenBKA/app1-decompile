package org.apache.http.util;

import java.io.Serializable;

public final class ByteArrayBuffer implements Serializable {
    private static final long serialVersionUID = 4359112959524048036L;
    private byte[] buffer;
    private int len;

    public ByteArrayBuffer(int i) {
        if (i >= 0) {
            this.buffer = new byte[i];
            return;
        }
        throw new IllegalArgumentException("Buffer capacity may not be negative");
    }

    private void expand(int i) {
        byte[] bArr = new byte[Math.max(this.buffer.length << 1, i)];
        System.arraycopy(this.buffer, 0, bArr, 0, this.len);
        this.buffer = bArr;
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr != null) {
            if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("off: ");
                stringBuffer.append(i);
                stringBuffer.append(" len: ");
                stringBuffer.append(i2);
                stringBuffer.append(" b.length: ");
                stringBuffer.append(bArr.length);
                throw new IndexOutOfBoundsException(stringBuffer.toString());
            } else if (i2 != 0) {
                int i4 = this.len + i2;
                if (i4 > this.buffer.length) {
                    expand(i4);
                }
                System.arraycopy(bArr, i, this.buffer, this.len, i2);
                this.len = i4;
            }
        }
    }

    public byte[] buffer() {
        return this.buffer;
    }

    public int byteAt(int i) {
        return this.buffer[i];
    }

    public int capacity() {
        return this.buffer.length;
    }

    public void clear() {
        this.len = 0;
    }

    public void ensureCapacity(int i) {
        if (i > 0) {
            int length = this.buffer.length;
            int i2 = this.len;
            if (i > length - i2) {
                expand(i2 + i);
            }
        }
    }

    public int indexOf(byte b, int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        int i3 = this.len;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i > i2) {
            return -1;
        }
        while (i < i2) {
            if (this.buffer[i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.len == 0;
    }

    public boolean isFull() {
        return this.len == this.buffer.length;
    }

    public int length() {
        return this.len;
    }

    public void setLength(int i) {
        if (i < 0 || i > this.buffer.length) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("len: ");
            stringBuffer.append(i);
            stringBuffer.append(" < 0 or > buffer len: ");
            stringBuffer.append(this.buffer.length);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }
        this.len = i;
    }

    public byte[] toByteArray() {
        int i = this.len;
        byte[] bArr = new byte[i];
        if (i > 0) {
            System.arraycopy(this.buffer, 0, bArr, 0, i);
        }
        return bArr;
    }

    public int indexOf(byte b) {
        return indexOf(b, 0, this.len);
    }

    public void append(int i) {
        int i2 = this.len + 1;
        if (i2 > this.buffer.length) {
            expand(i2);
        }
        this.buffer[this.len] = (byte) i;
        this.len = i2;
    }

    public void append(char[] cArr, int i, int i2) {
        int i3;
        if (cArr != null) {
            if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > cArr.length) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("off: ");
                stringBuffer.append(i);
                stringBuffer.append(" len: ");
                stringBuffer.append(i2);
                stringBuffer.append(" b.length: ");
                stringBuffer.append(cArr.length);
                throw new IndexOutOfBoundsException(stringBuffer.toString());
            } else if (i2 != 0) {
                int i4 = this.len;
                int i5 = i2 + i4;
                if (i5 > this.buffer.length) {
                    expand(i5);
                }
                while (i4 < i5) {
                    this.buffer[i4] = (byte) cArr[i];
                    i++;
                    i4++;
                }
                this.len = i5;
            }
        }
    }

    public void append(CharArrayBuffer charArrayBuffer, int i, int i2) {
        if (charArrayBuffer != null) {
            append(charArrayBuffer.buffer(), i, i2);
        }
    }
}
