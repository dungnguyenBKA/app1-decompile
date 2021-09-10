.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 10

    if-eqz p1, :cond_15

    if-eqz p2, :cond_14

    .line 1
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http.cookie-store"

    .line 3
    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Cookie store not specified in HTTP context"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "http.cookiespec-registry"

    .line 5
    invoke-interface {p2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/CookieSpecRegistry;

    if-nez v1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "CookieSpec registry not specified in HTTP context"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, "http.target_host"

    .line 7
    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    if-nez v2, :cond_3

    .line 8
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Target host not set in the context"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v3, "http.connection"

    .line 9
    invoke-interface {p2, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/HttpRoutedConnection;

    if-nez v3, :cond_4

    .line 10
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "HTTP connection not set in the context"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    iget-object v5, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CookieSpec selected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 14
    :cond_5
    instance-of v5, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v5, :cond_6

    .line 15
    move-object v5, p1

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    goto :goto_0

    .line 16
    :cond_6
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v7, :cond_a

    .line 19
    invoke-interface {v3}, Lorg/apache/http/conn/HttpRoutedConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 21
    invoke-interface {v3}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v7

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    .line 23
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x50

    goto :goto_1

    :cond_8
    const-string v7, "https"

    .line 24
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v7, 0x1bb

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    .line 25
    :cond_a
    :goto_1
    new-instance v2, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/conn/HttpRoutedConnection;->isSecure()Z

    move-result v3

    invoke-direct {v2, v6, v7, v5, v3}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 26
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v1

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 31
    invoke-interface {v5, v4}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v6

    const-string v7, "Cookie "

    if-nez v6, :cond_d

    .line 32
    invoke-interface {v1, v5, v2}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 33
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 34
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " match "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 35
    :cond_c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    :cond_d
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 37
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " expired"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 39
    invoke-interface {v1, v0}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/Header;

    .line 41
    invoke-interface {p1, v4}, Lorg/apache/http/HttpMessage;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    .line 42
    :cond_f
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v3

    if-lez v3, :cond_13

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 44
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v5

    if-ne v3, v5, :cond_11

    instance-of v4, v4, Lorg/apache/http/cookie/SetCookie2;

    if-nez v4, :cond_10

    :cond_11
    const/4 v8, 0x1

    goto :goto_4

    :cond_12
    if-eqz v8, :cond_13

    .line 45
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->addHeader(Lorg/apache/http/Header;)V

    :cond_13
    const-string p1, "http.cookie-spec"

    .line 47
    invoke-interface {p2, p1, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http.cookie-origin"

    .line 48
    invoke-interface {p2, p1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p2

    .line 49
    new-instance v0, Lorg/apache/http/ProtocolException;

    const-string v1, "Invalid request URI: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 50
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
