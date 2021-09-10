package org.apache.http.conn.scheme;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.LangUtils;

@Immutable
public final class Scheme {
    private final int defaultPort;
    private final boolean layered;
    private final String name;
    private final SchemeSocketFactory socketFactory;
    private String stringRep;

    public Scheme(String str, int i, SchemeSocketFactory schemeSocketFactory) {
        if (str == null) {
            throw new IllegalArgumentException("Scheme name may not be null");
        } else if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException(ic.f("Port is invalid: ", i));
        } else if (schemeSocketFactory != null) {
            this.name = str.toLowerCase(Locale.ENGLISH);
            this.socketFactory = schemeSocketFactory;
            this.defaultPort = i;
            this.layered = schemeSocketFactory instanceof LayeredSchemeSocketFactory;
        } else {
            throw new IllegalArgumentException("Socket factory may not be null");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scheme)) {
            return false;
        }
        Scheme scheme = (Scheme) obj;
        if (this.name.equals(scheme.name) && this.defaultPort == scheme.defaultPort && this.layered == scheme.layered) {
            return true;
        }
        return false;
    }

    public final int getDefaultPort() {
        return this.defaultPort;
    }

    public final String getName() {
        return this.name;
    }

    public final SchemeSocketFactory getSchemeSocketFactory() {
        return this.socketFactory;
    }

    @Deprecated
    public final SocketFactory getSocketFactory() {
        SchemeSocketFactory schemeSocketFactory = this.socketFactory;
        if (schemeSocketFactory instanceof SchemeSocketFactoryAdaptor) {
            return ((SchemeSocketFactoryAdaptor) schemeSocketFactory).getFactory();
        }
        if (this.layered) {
            return new LayeredSocketFactoryAdaptor((LayeredSchemeSocketFactory) schemeSocketFactory);
        }
        return new SocketFactoryAdaptor(schemeSocketFactory);
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.defaultPort), this.name), this.layered);
    }

    public final boolean isLayered() {
        return this.layered;
    }

    public final int resolvePort(int i) {
        return i <= 0 ? this.defaultPort : i;
    }

    public final String toString() {
        if (this.stringRep == null) {
            this.stringRep = this.name + ':' + Integer.toString(this.defaultPort);
        }
        return this.stringRep;
    }

    @Deprecated
    public Scheme(String str, SocketFactory socketFactory2, int i) {
        if (str == null) {
            throw new IllegalArgumentException("Scheme name may not be null");
        } else if (socketFactory2 == null) {
            throw new IllegalArgumentException("Socket factory may not be null");
        } else if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException(ic.f("Port is invalid: ", i));
        } else {
            this.name = str.toLowerCase(Locale.ENGLISH);
            if (socketFactory2 instanceof LayeredSocketFactory) {
                this.socketFactory = new LayeredSchemeSocketFactoryAdaptor((LayeredSocketFactory) socketFactory2);
                this.layered = true;
            } else {
                this.socketFactory = new SchemeSocketFactoryAdaptor(socketFactory2);
                this.layered = false;
            }
            this.defaultPort = i;
        }
    }
}
