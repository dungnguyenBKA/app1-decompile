package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.LangUtils;

@Immutable
public final class HttpRoute implements RouteInfo, Cloneable {
    private static final HttpHost[] EMPTY_HTTP_HOST_ARRAY = new HttpHost[0];
    private final RouteInfo.LayerType layered;
    private final InetAddress localAddress;
    private final HttpHost[] proxyChain;
    private final boolean secure;
    private final HttpHost targetHost;
    private final RouteInfo.TunnelType tunnelled;

    private HttpRoute(InetAddress inetAddress, HttpHost httpHost, HttpHost[] httpHostArr, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        if (httpHost == null) {
            throw new IllegalArgumentException("Target host may not be null.");
        } else if (httpHostArr == null) {
            throw new IllegalArgumentException("Proxies may not be null.");
        } else if (tunnelType == RouteInfo.TunnelType.TUNNELLED && httpHostArr.length == 0) {
            throw new IllegalArgumentException("Proxy required if tunnelled.");
        } else {
            tunnelType = tunnelType == null ? RouteInfo.TunnelType.PLAIN : tunnelType;
            layerType = layerType == null ? RouteInfo.LayerType.PLAIN : layerType;
            this.targetHost = httpHost;
            this.localAddress = inetAddress;
            this.proxyChain = httpHostArr;
            this.secure = z;
            this.tunnelled = tunnelType;
            this.layered = layerType;
        }
    }

    private static HttpHost[] toChain(HttpHost httpHost) {
        if (httpHost == null) {
            return EMPTY_HTTP_HOST_ARRAY;
        }
        return new HttpHost[]{httpHost};
    }

    @Override // java.lang.Object
    public Object clone() {
        return super.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HttpRoute)) {
            return false;
        }
        HttpRoute httpRoute = (HttpRoute) obj;
        if (this.secure != httpRoute.secure || this.tunnelled != httpRoute.tunnelled || this.layered != httpRoute.layered || !LangUtils.equals(this.targetHost, httpRoute.targetHost) || !LangUtils.equals(this.localAddress, httpRoute.localAddress) || !LangUtils.equals((Object[]) this.proxyChain, (Object[]) httpRoute.proxyChain)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final int getHopCount() {
        return this.proxyChain.length + 1;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getHopTarget(int i) {
        if (i >= 0) {
            int hopCount = getHopCount();
            if (i >= hopCount) {
                throw new IllegalArgumentException("Hop index " + i + " exceeds route length " + hopCount);
            } else if (i < hopCount - 1) {
                return this.proxyChain[i];
            } else {
                return this.targetHost;
            }
        } else {
            throw new IllegalArgumentException(ic.f("Hop index must not be negative: ", i));
        }
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.LayerType getLayerType() {
        return this.layered;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final InetAddress getLocalAddress() {
        return this.localAddress;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getProxyHost() {
        HttpHost[] httpHostArr = this.proxyChain;
        if (httpHostArr.length == 0) {
            return null;
        }
        return httpHostArr[0];
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final HttpHost getTargetHost() {
        return this.targetHost;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final RouteInfo.TunnelType getTunnelType() {
        return this.tunnelled;
    }

    public final int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.targetHost), this.localAddress);
        int i = 0;
        while (true) {
            HttpHost[] httpHostArr = this.proxyChain;
            if (i >= httpHostArr.length) {
                return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(hashCode, this.secure), this.tunnelled), this.layered);
            }
            hashCode = LangUtils.hashCode(hashCode, httpHostArr[i]);
            i++;
        }
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isLayered() {
        return this.layered == RouteInfo.LayerType.LAYERED;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isSecure() {
        return this.secure;
    }

    @Override // org.apache.http.conn.routing.RouteInfo
    public final boolean isTunnelled() {
        return this.tunnelled == RouteInfo.TunnelType.TUNNELLED;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getHopCount() * 30) + 50);
        sb.append("HttpRoute[");
        InetAddress inetAddress = this.localAddress;
        if (inetAddress != null) {
            sb.append(inetAddress);
            sb.append("->");
        }
        sb.append('{');
        if (this.tunnelled == RouteInfo.TunnelType.TUNNELLED) {
            sb.append('t');
        }
        if (this.layered == RouteInfo.LayerType.LAYERED) {
            sb.append('l');
        }
        if (this.secure) {
            sb.append('s');
        }
        sb.append("}->");
        for (HttpHost httpHost : this.proxyChain) {
            sb.append(httpHost);
            sb.append("->");
        }
        sb.append(this.targetHost);
        sb.append(']');
        return sb.toString();
    }

    private static HttpHost[] toChain(HttpHost[] httpHostArr) {
        if (httpHostArr == null || httpHostArr.length < 1) {
            return EMPTY_HTTP_HOST_ARRAY;
        }
        for (HttpHost httpHost : httpHostArr) {
            if (httpHost == null) {
                throw new IllegalArgumentException("Proxy chain may not contain null elements.");
            }
        }
        HttpHost[] httpHostArr2 = new HttpHost[httpHostArr.length];
        System.arraycopy(httpHostArr, 0, httpHostArr2, 0, httpHostArr.length);
        return httpHostArr2;
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost[] httpHostArr, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(inetAddress, httpHost, toChain(httpHostArr), z, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z, RouteInfo.TunnelType tunnelType, RouteInfo.LayerType layerType) {
        this(inetAddress, httpHost, toChain(httpHost2), z, tunnelType, layerType);
    }

    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, boolean z) {
        this(inetAddress, httpHost, EMPTY_HTTP_HOST_ARRAY, z, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httpHost) {
        this((InetAddress) null, httpHost, EMPTY_HTTP_HOST_ARRAY, false, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public HttpRoute(HttpHost httpHost, InetAddress inetAddress, HttpHost httpHost2, boolean z) {
        this(inetAddress, httpHost, toChain(httpHost2), z, z ? RouteInfo.TunnelType.TUNNELLED : RouteInfo.TunnelType.PLAIN, z ? RouteInfo.LayerType.LAYERED : RouteInfo.LayerType.PLAIN);
        if (httpHost2 == null) {
            throw new IllegalArgumentException("Proxy host may not be null.");
        }
    }
}
