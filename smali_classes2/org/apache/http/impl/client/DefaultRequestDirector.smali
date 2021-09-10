.class public Lorg/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/RequestDirector;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lorg/apache/http/params/HttpParams;

.field protected final proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field protected final proxyAuthState:Lorg/apache/http/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lorg/apache/http/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field protected final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field protected final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

.field protected final targetAuthState:Lorg/apache/http/auth/AuthState;

.field protected final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

.field private virtualHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    if-eqz p3, :cond_a

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    if-eqz p6, :cond_7

    if-eqz p7, :cond_6

    if-eqz p8, :cond_5

    if-eqz p9, :cond_4

    if-eqz p10, :cond_3

    if-eqz p11, :cond_2

    if-eqz p12, :cond_1

    if-eqz p13, :cond_0

    .line 4
    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 5
    iput-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 6
    iput-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 7
    iput-object p4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 8
    iput-object p5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 9
    iput-object p6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 10
    iput-object p7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 11
    iput-object p8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 12
    iput-object p9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 13
    iput-object p10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 14
    iput-object p11, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    .line 15
    iput-object p12, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 16
    iput-object p13, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    .line 17
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 19
    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    const/16 p1, 0x64

    const-string p2, "http.protocol.max-redirects"

    .line 20
    invoke-interface {p13, p2, p1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    .line 21
    new-instance p1, Lorg/apache/http/auth/AuthState;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    .line 22
    new-instance p1, Lorg/apache/http/auth/AuthState;

    invoke-direct {p1}, Lorg/apache/http/auth/AuthState;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User token handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Proxy authentication handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target authentication handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Redirect strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request retry handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP protocol processor may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route planner may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection keep alive strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection reuse strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client connection manager may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request executor may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Log may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v10, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lorg/apache/http/client/RedirectHandler;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lorg/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/apache/commons/logging/Log;Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectStrategy;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 3
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private invalidateAuthIfSuccessful(Lorg/apache/http/auth/AuthState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->invalidate()V

    :cond_0
    return-void
.end method

.method private processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/auth/AuthState;",
            "Lorg/apache/http/client/AuthenticationHandler;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p3, p1, p4, p5}, Lorg/apache/http/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 3
    invoke-virtual {p2, v0}, Lorg/apache/http/auth/AuthState;->setAuthScheme(Lorg/apache/http/auth/AuthScheme;)V

    .line 4
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/Header;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lorg/apache/http/auth/AuthScheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 7
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Authorization challenge processed"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p3, " authorization challenge expected, but not found"

    invoke-static {p2, p3}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v2}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    .line 5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 7
    :goto_2
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v2, v1, v0, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "I/O exception ("

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") caught when connecting to the target host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Retrying connect"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    .line 3
    :goto_0
    iget v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    .line 4
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->incrementExecCount()V

    .line 5
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    .line 7
    new-instance p1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {p1, p2, v2}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {p1, p2}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Reopening the direct connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v2, p1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Proxied connection. Need to start over."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to execute request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 16
    :cond_4
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v1

    :catch_0
    move-exception v2

    .line 17
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Closing the connection."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 18
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 19
    :goto_3
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getExecCount()I

    move-result v4

    invoke-interface {v3, v2, v4, p2}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "I/O exception ("

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when processing request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 22
    :cond_5
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 24
    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Retrying request"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 25
    :cond_7
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    if-gez v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object p2

    .line 7
    new-instance v2, Lorg/apache/http/auth/AuthScope;

    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication scope: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    invoke-interface {p3, v2}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 12
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_3

    .line 13
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Found credentials"

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Credentials not found"

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Authentication failed"

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p1, v2}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 18
    invoke-virtual {p1, v0}, Lorg/apache/http/auth/AuthState;->setCredentials(Lorg/apache/http/auth/Credentials;)V

    return-void
.end method

.method private wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {p2}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object p2

    .line 12
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method protected createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/http/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v2

    :goto_0
    if-nez v4, :cond_6

    .line 3
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, p1, p2, v5}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createConnectRequest(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpRequest;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v5}, Lorg/apache/http/HttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string v5, "http.target_host"

    .line 7
    invoke-interface {p2, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.proxy_host"

    .line 8
    invoke-interface {p2, v5, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const-string v6, "http.connection"

    invoke-interface {p2, v6, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    const-string v6, "http.auth.target-scope"

    invoke-interface {p2, v6, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    const-string v6, "http.auth.proxy-scope"

    invoke-interface {p2, v6, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.request"

    .line 12
    invoke-interface {p2, v5, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v5, v4, v6, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 14
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v5, v4, v6, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 15
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v5, v4}, Lorg/apache/http/HttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 16
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v4, v5, v6, p2}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 17
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_5

    const-string v4, "http.auth.credentials-provider"

    .line 18
    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/client/CredentialsProvider;

    if-eqz v4, :cond_3

    .line 19
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v6}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v6, v5, p2}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Proxy requested authentication"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 22
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v6, v5, p2}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v8

    .line 23
    :try_start_0
    iget-object v9, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v10, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v7, p0

    move-object v11, v5

    move-object v12, p2

    invoke-direct/range {v7 .. v12}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 24
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "Authentication error: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_4

    .line 26
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {p0, v6, v0, v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 27
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v4}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 28
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v4, v5, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Connection kept alive"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 30
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 31
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    goto :goto_2

    .line 32
    :cond_2
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/HttpConnection;->close()V

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 33
    :cond_4
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v4, v2}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    goto :goto_3

    .line 34
    :cond_5
    new-instance p1, Lorg/apache/http/HttpException;

    const-string p2, "Unexpected response to CONNECT request: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_6
    :goto_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_8

    .line 36
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 37
    new-instance p2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v5, p2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 38
    :cond_7
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->close()V

    .line 39
    new-instance p1, Lorg/apache/http/impl/client/TunnelRefusedException;

    const-string p2, "CONNECT refused by proxy: "

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Lorg/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw p1

    .line 40
    :cond_8
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    return v3
.end method

.method protected determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p2}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    const-string v0, "http.default-host"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/HttpHost;

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target host must not be null, or set in parameters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected establishRoute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 3
    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown step indicator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from RouteDirector."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 7
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 8
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Tunnel to proxy created."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 11
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Tunnel to target created."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 12
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    :goto_0
    :pswitch_4
    if-gtz v2, :cond_0

    return-void

    .line 14
    :pswitch_5
    new-instance p2, Lorg/apache/http/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to establish route: planned = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 11

    const-string v0, "http.user-token"

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 3
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 4
    invoke-interface {p2}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.virtual-host"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpHost;

    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result p1

    if-eq p1, v4, :cond_0

    .line 7
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 8
    :cond_0
    new-instance p1, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {p1, v1, v2}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_e

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    .line 11
    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v6, :cond_3

    .line 13
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v6, v4, v5}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v6

    .line 14
    instance-of v7, p2, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v7, :cond_2

    .line 15
    move-object v7, p2

    check-cast v7, Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v7, v6}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V

    .line 16
    :cond_2
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v7}, Lorg/apache/http/conn/params/ConnManagerParams;->getTimeout(Lorg/apache/http/params/HttpParams;)J

    move-result-wide v7
    :try_end_0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    :try_start_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 18
    :try_start_2
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v6}, Lorg/apache/http/params/HttpConnectionParams;->isStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 19
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Stale connection check"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 21
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/HttpConnection;->isStale()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Stale connection detected"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 23
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/HttpConnection;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 25
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    throw p2

    .line 27
    :cond_3
    :goto_1
    instance-of v6, p2, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v6, :cond_4

    .line 28
    move-object v6, p2

    check-cast v6, Lorg/apache/http/client/methods/AbortableHttpRequest;

    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6, v7}, Lorg/apache/http/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryConnect(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_3
    .catch Lorg/apache/http/impl/client/TunnelRefusedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 30
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 31
    invoke-virtual {p0, v1, v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 32
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    if-nez v6, :cond_5

    .line 33
    invoke-virtual {v4}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 34
    :cond_5
    invoke-virtual {v4}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    const-string v7, "http.target_host"

    .line 35
    invoke-interface {p3, v7, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "http.proxy_host"

    .line 36
    invoke-interface {p3, v6, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "http.connection"

    .line 37
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p3, v4, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "http.auth.target-scope"

    .line 38
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {p3, v4, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "http.auth.proxy-scope"

    .line 39
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-interface {p3, v4, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v4, v1, v6, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 41
    invoke-direct {p0, p1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->tryExecute(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 42
    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 43
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v3, v1, v4, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 44
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v3, v1, p3}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 45
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v4, v1, p3}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v6

    .line 46
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const-string v4, "indefinitely"

    .line 48
    :goto_2
    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection can be kept alive "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 49
    :cond_8
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 50
    :cond_9
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 51
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 52
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 53
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    goto :goto_3

    .line 54
    :cond_b
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/HttpConnection;->close()V

    .line 55
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lorg/apache/http/auth/AuthState;)V

    .line 56
    iget-object v6, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lorg/apache/http/auth/AuthState;)V

    .line 57
    :goto_3
    invoke-virtual {v4}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 58
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_c
    move-object p1, v4

    .line 59
    :goto_4
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 60
    iget-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    invoke-interface {v4, p3}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v4

    .line 61
    invoke-interface {p3, v0, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    .line 62
    iget-object v5, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5, v4}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 63
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 64
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 65
    :cond_d
    invoke-virtual {p1}, Lorg/apache/http/impl/client/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p1

    goto :goto_9

    :catch_4
    move-exception p1

    goto :goto_a

    :catch_5
    move-exception p1

    goto :goto_b

    :cond_e
    :goto_5
    if-eqz v1, :cond_10

    .line 66
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_6

    .line 67
    :cond_f
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    .line 68
    new-instance p2, Lorg/apache/http/conn/BasicManagedEntity;

    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-direct {p2, p1, p3, v3}, Lorg/apache/http/conn/BasicManagedEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V

    .line 69
    invoke-interface {v1, p2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_7

    :cond_10
    :goto_6
    if-eqz v3, :cond_11

    .line 70
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 71
    :cond_11
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_4
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    return-object v1

    .line 72
    :goto_8
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 73
    throw p1

    .line 74
    :goto_9
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 75
    throw p1

    .line 76
    :goto_a
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 77
    throw p1

    .line 78
    :goto_b
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 80
    goto :goto_d

    :goto_c
    throw p2

    :goto_d
    goto :goto_c
.end method

.method protected handleResponse(Lorg/apache/http/impl/client/RoutedRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/RoutedRequest;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RoutedRequest;->getRequest()Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/apache/http/message/AbstractHttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParams;->isRedirecting(Lorg/apache/http/params/HttpParams;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v3, v1, p2, p3}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    iget p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge p1, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 6
    iput p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 7
    iput-object v4, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->virtualHost:Lorg/apache/http/HttpHost;

    .line 8
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {p1, v1, p2, p3}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 11
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v3, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 15
    iget-object v3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v3, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 16
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->invalidate()V

    .line 18
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->invalidate()V

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->wrapRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 23
    invoke-virtual {p0, v1, p1, p3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p3

    .line 24
    new-instance v0, Lorg/apache/http/impl/client/RoutedRequest;

    invoke-direct {v0, p1, p3}, Lorg/apache/http/impl/client/RoutedRequest;-><init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 25
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirecting to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' via "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    .line 27
    :cond_2
    new-instance p1, Lorg/apache/http/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect URI does not specify a valid host name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Lorg/apache/http/client/RedirectException;

    const-string p2, "Maximum redirects ("

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->maxRedirects:I

    const-string v0, ") exceeded"

    invoke-static {p2, p3, v0}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "http.auth.credentials-provider"

    .line 29
    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/CredentialsProvider;

    if-eqz v1, :cond_c

    .line 30
    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParams;->isAuthenticating(Lorg/apache/http/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v2, p2, p3}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    const-string v3, "Authentication error: "

    if-eqz v2, :cond_8

    const-string v2, "http.target_host"

    .line 32
    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    if-nez v2, :cond_5

    .line 33
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 34
    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Target requested authentication"

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v6

    .line 36
    :try_start_0
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v5, p0

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 37
    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 38
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object v4

    .line 39
    :cond_6
    :goto_0
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {p0, p2, v2, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 40
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p1

    :cond_7
    return-object v4

    .line 41
    :cond_8
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->targetAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {v2, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    .line 42
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v2, p2, p3}, Lorg/apache/http/client/AuthenticationHandler;->isAuthenticationRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 43
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Proxy requested authentication"

    invoke-interface {v2, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 45
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    invoke-interface {v2, p2, p3}, Lorg/apache/http/client/AuthenticationHandler;->getChallenges(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v6

    .line 46
    :try_start_1
    iget-object v7, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    iget-object v8, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lorg/apache/http/client/AuthenticationHandler;

    move-object v5, p0

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/apache/http/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lorg/apache/http/auth/AuthState;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 47
    iget-object p3, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 48
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object v4

    .line 49
    :cond_9
    :goto_1
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->updateAuthState(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpHost;Lorg/apache/http/client/CredentialsProvider;)V

    .line 50
    iget-object p2, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {p2}, Lorg/apache/http/auth/AuthState;->getCredentials()Lorg/apache/http/auth/Credentials;

    move-result-object p2

    if-eqz p2, :cond_a

    return-object p1

    :cond_a
    return-object v4

    .line 51
    :cond_b
    iget-object p1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->proxyAuthState:Lorg/apache/http/auth/AuthState;

    invoke-virtual {p1, v4}, Lorg/apache/http/auth/AuthState;->setAuthScope(Lorg/apache/http/auth/AuthScope;)V

    :cond_c
    return-object v4
.end method

.method protected releaseConnection()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    return-void
.end method

.method protected rewriteRequestURI(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    .line 5
    invoke-static {v0, p2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 8
    invoke-static {v0, p2}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 10
    new-instance v0, Lorg/apache/http/ProtocolException;

    const-string v1, "Invalid URI: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
