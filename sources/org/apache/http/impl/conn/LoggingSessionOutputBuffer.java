package org.apache.http.impl.conn;

import org.apache.http.annotation.Immutable;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class LoggingSessionOutputBuffer implements SessionOutputBuffer {
    private final String charset;
    private final SessionOutputBuffer out;
    private final Wire wire;

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionOutputBuffer, Wire wire2, String str) {
        this.out = sessionOutputBuffer;
        this.wire = wire2;
        this.charset = str == null ? HTTP.ASCII : str;
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void flush() {
        this.out.flush();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.out.getMetrics();
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        if (this.wire.enabled()) {
            this.wire.output(bArr, i, i2);
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) {
        this.out.writeLine(charArrayBuffer);
        if (this.wire.enabled()) {
            this.wire.output(ic.i(new String(charArrayBuffer.buffer(), 0, charArrayBuffer.length()), "\r\n").getBytes(this.charset));
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(int i) {
        this.out.write(i);
        if (this.wire.enabled()) {
            this.wire.output(i);
        }
    }

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionOutputBuffer, Wire wire2) {
        this(sessionOutputBuffer, wire2, null);
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void writeLine(String str) {
        this.out.writeLine(str);
        if (this.wire.enabled()) {
            this.wire.output(ic.i(str, "\r\n").getBytes(this.charset));
        }
    }

    @Override // org.apache.http.io.SessionOutputBuffer
    public void write(byte[] bArr) {
        this.out.write(bArr);
        if (this.wire.enabled()) {
            this.wire.output(bArr);
        }
    }
}
