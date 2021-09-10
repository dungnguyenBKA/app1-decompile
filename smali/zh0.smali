.class public final Lzh0;
.super Lvi0$j;
.source "SourceFile"

# interfaces
.implements Lsg0;


# instance fields
.field private final b:Ltg0;

.field private final c:Lnh0;

.field private d:Ljava/net/Socket;

.field private e:Ljava/net/Socket;

.field private f:Lbh0;

.field private g:Lhh0;

.field private h:Lvi0;

.field private i:Lzj0;

.field private j:Lyj0;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Ldi0;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Ltg0;Lnh0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lvi0$j;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lzh0;->m:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzh0;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lzh0;->o:J

    .line 5
    iput-object p1, p0, Lzh0;->b:Ltg0;

    .line 6
    iput-object p2, p0, Lzh0;->c:Lnh0;

    return-void
.end method

.method private e(IILog0;Lzg0;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p3}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object p3

    .line 2
    iget-object v0, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->a()Lkg0;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkg0;->j()Ljavax/net/SocketFactory;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 6
    :goto_1
    iput-object v0, p0, Lzh0;->d:Ljava/net/Socket;

    .line 7
    iget-object p3, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p3}, Lnh0;->d()Ljava/net/InetSocketAddress;

    .line 8
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lzh0;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 10
    :try_start_0
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object p2

    iget-object p3, p0, Lzh0;->d:Ljava/net/Socket;

    iget-object p4, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p4}, Lnh0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lmj0;->g(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    iget-object p1, p0, Lzh0;->d:Ljava/net/Socket;

    invoke-static {p1}, Lik0;->j(Ljava/net/Socket;)Lrk0;

    move-result-object p1

    invoke-static {p1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    iput-object p1, p0, Lzh0;->i:Lzj0;

    .line 12
    iget-object p1, p0, Lzh0;->d:Ljava/net/Socket;

    invoke-static {p1}, Lik0;->g(Ljava/net/Socket;)Lqk0;

    move-result-object p1

    invoke-static {p1}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object p1

    iput-object p1, p0, Lzh0;->j:Lyj0;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 14
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p4}, Lnh0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    throw p2
.end method

.method private f(IIILog0;Lzg0;)V
    .locals 9

    .line 1
    new-instance v0, Ljh0$a;

    invoke-direct {v0}, Ljh0$a;-><init>()V

    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 2
    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljh0$a;->h(Ldh0;)Ljh0$a;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 4
    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lrh0;->p(Ldh0;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Host"

    invoke-virtual {v0, v4, v1}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    const-string v1, "Proxy-Connection"

    const-string v4, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v4}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    const-string v1, "User-Agent"

    const-string v4, "okhttp/3.12.12"

    .line 6
    invoke-virtual {v0, v1, v4}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 7
    invoke-virtual {v0}, Ljh0$a;->b()Ljh0;

    move-result-object v0

    .line 8
    new-instance v1, Llh0$a;

    invoke-direct {v1}, Llh0$a;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Llh0$a;->o(Ljh0;)Llh0$a;

    sget-object v4, Lhh0;->d:Lhh0;

    .line 10
    invoke-virtual {v1, v4}, Llh0$a;->m(Lhh0;)Llh0$a;

    const/16 v4, 0x197

    .line 11
    invoke-virtual {v1, v4}, Llh0$a;->f(I)Llh0$a;

    const-string v5, "Preemptive Authenticate"

    .line 12
    invoke-virtual {v1, v5}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    sget-object v5, Lrh0;->c:Lmh0;

    .line 13
    invoke-virtual {v1, v5}, Llh0$a;->b(Lmh0;)Llh0$a;

    const-wide/16 v5, -0x1

    .line 14
    invoke-virtual {v1, v5, v6}, Llh0$a;->p(J)Llh0$a;

    .line 15
    invoke-virtual {v1, v5, v6}, Llh0$a;->n(J)Llh0$a;

    const-string v7, "Proxy-Authenticate"

    const-string v8, "OkHttp-Preemptive"

    .line 16
    invoke-virtual {v1, v7, v8}, Llh0$a;->h(Ljava/lang/String;Ljava/lang/String;)Llh0$a;

    .line 17
    invoke-virtual {v1}, Llh0$a;->c()Llh0;

    .line 18
    iget-object v1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->h()Llg0;

    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Ljh0;->h()Ldh0;

    move-result-object v1

    .line 21
    invoke-direct {p0, p1, p2, p4, p5}, Lzh0;->e(IILog0;Lzg0;)V

    const-string p1, "CONNECT "

    .line 22
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1, v3}, Lrh0;->p(Ldh0;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p4, Loi0;

    iget-object p5, p0, Lzh0;->i:Lzj0;

    iget-object v1, p0, Lzh0;->j:Lyj0;

    invoke-direct {p4, v2, v2, p5, v1}, Loi0;-><init>(Lgh0;Ldi0;Lzj0;Lyj0;)V

    .line 24
    invoke-interface {p5}, Lrk0;->timeout()Lsk0;

    move-result-object p5

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, v1, v2, p2}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    .line 25
    iget-object p5, p0, Lzh0;->j:Lyj0;

    invoke-interface {p5}, Lqk0;->timeout()Lsk0;

    move-result-object p5

    int-to-long v1, p3

    invoke-virtual {p5, v1, v2, p2}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    .line 26
    invoke-virtual {v0}, Ljh0;->d()Lch0;

    move-result-object p3

    invoke-virtual {p4, p3, p1}, Loi0;->k(Lch0;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p4}, Loi0;->a()V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p4, p1}, Loi0;->d(Z)Llh0$a;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Llh0$a;->o(Ljh0;)Llh0$a;

    .line 30
    invoke-virtual {p1}, Llh0$a;->c()Llh0;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lii0;->a(Llh0;)J

    move-result-wide v0

    cmp-long p3, v0, v5

    if-nez p3, :cond_0

    const-wide/16 v0, 0x0

    .line 32
    :cond_0
    invoke-virtual {p4, v0, v1}, Loi0;->h(J)Lrk0;

    move-result-object p3

    const p4, 0x7fffffff

    .line 33
    invoke-static {p3, p4, p2}, Lrh0;->w(Lrk0;ILjava/util/concurrent/TimeUnit;)Z

    .line 34
    invoke-interface {p3}, Lrk0;->close()V

    .line 35
    invoke-virtual {p1}, Llh0;->L()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_2

    if-ne p2, v4, :cond_1

    .line 36
    iget-object p1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p1}, Lnh0;->a()Lkg0;

    move-result-object p1

    invoke-virtual {p1}, Lkg0;->h()Llg0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 39
    invoke-virtual {p1}, Llh0;->L()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 40
    :cond_2
    iget-object p1, p0, Lzh0;->i:Lzj0;

    invoke-interface {p1}, Lzj0;->a()Lxj0;

    move-result-object p1

    invoke-virtual {p1}, Lxj0;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzh0;->j:Lyj0;

    invoke-interface {p1}, Lyj0;->a()Lxj0;

    move-result-object p1

    invoke-virtual {p1}, Lxj0;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 41
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Lyh0;ILog0;Lzg0;)V
    .locals 6

    .line 1
    sget-object p3, Lhh0;->d:Lhh0;

    iget-object v0, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->a()Lkg0;

    move-result-object v0

    invoke-virtual {v0}, Lkg0;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p1}, Lnh0;->a()Lkg0;

    move-result-object p1

    invoke-virtual {p1}, Lkg0;->f()Ljava/util/List;

    move-result-object p1

    sget-object p4, Lhh0;->g:Lhh0;

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzh0;->d:Ljava/net/Socket;

    iput-object p1, p0, Lzh0;->e:Ljava/net/Socket;

    .line 4
    iput-object p4, p0, Lzh0;->g:Lhh0;

    .line 5
    invoke-direct {p0, p2}, Lzh0;->o(I)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lzh0;->d:Ljava/net/Socket;

    iput-object p1, p0, Lzh0;->e:Ljava/net/Socket;

    .line 7
    iput-object p3, p0, Lzh0;->g:Lhh0;

    return-void

    .line 8
    :cond_1
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p4, p0, Lzh0;->c:Lnh0;

    invoke-virtual {p4}, Lnh0;->a()Lkg0;

    move-result-object p4

    .line 10
    invoke-virtual {p4}, Lkg0;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lzh0;->d:Ljava/net/Socket;

    .line 12
    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object v3

    invoke-virtual {v3}, Ldh0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object v4

    invoke-virtual {v4}, Ldh0;->t()I

    move-result v4

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p1, v0}, Lyh0;->a(Ljavax/net/ssl/SSLSocket;)Lug0;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lug0;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v2

    .line 17
    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object v3

    invoke-virtual {v3}, Ldh0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lkg0;->f()Ljava/util/List;

    move-result-object v4

    .line 18
    invoke-virtual {v2, v0, v3, v4}, Lmj0;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 19
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 20
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lbh0;->b(Ljavax/net/ssl/SSLSession;)Lbh0;

    move-result-object v3

    .line 22
    invoke-virtual {p4}, Lkg0;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object v5

    invoke-virtual {v5}, Ldh0;->j()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    invoke-virtual {v3}, Lbh0;->c()Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p3, "Hostname "

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 25
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 26
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object p3

    invoke-virtual {p3}, Ldh0;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified:\n    certificate: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p1}, Lqg0;->b(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n    DN: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p3

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n    subjectAltNames: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {p1}, Lrj0;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object p3

    invoke-virtual {p3}, Ldh0;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified (no certificates)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_4
    invoke-virtual {p4}, Lkg0;->a()Lqg0;

    move-result-object v2

    invoke-virtual {p4}, Lkg0;->l()Ldh0;

    move-result-object p4

    invoke-virtual {p4}, Ldh0;->j()Ljava/lang/String;

    move-result-object p4

    .line 34
    invoke-virtual {v3}, Lbh0;->c()Ljava/util/List;

    move-result-object v4

    .line 35
    invoke-virtual {v2, p4, v4}, Lqg0;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 36
    invoke-virtual {p1}, Lug0;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmj0;->j(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_5
    iput-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    .line 39
    invoke-static {v0}, Lik0;->j(Ljava/net/Socket;)Lrk0;

    move-result-object p1

    invoke-static {p1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    iput-object p1, p0, Lzh0;->i:Lzj0;

    .line 40
    iget-object p1, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-static {p1}, Lik0;->g(Ljava/net/Socket;)Lqk0;

    move-result-object p1

    invoke-static {p1}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object p1

    iput-object p1, p0, Lzh0;->j:Lyj0;

    .line 41
    iput-object v3, p0, Lzh0;->f:Lbh0;

    if-eqz v1, :cond_6

    .line 42
    invoke-static {v1}, Lhh0;->a(Ljava/lang/String;)Lhh0;

    move-result-object p3

    .line 43
    :cond_6
    iput-object p3, p0, Lzh0;->g:Lhh0;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmj0;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 45
    iget-object p1, p0, Lzh0;->g:Lhh0;

    sget-object p3, Lhh0;->f:Lhh0;

    if-ne p1, p3, :cond_7

    .line 46
    invoke-direct {p0, p2}, Lzh0;->o(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 47
    :goto_0
    :try_start_3
    invoke-static {p1}, Lrh0;->u(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 48
    :cond_8
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_9

    .line 49
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lmj0;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 50
    :cond_9
    invoke-static {v0}, Lrh0;->h(Ljava/net/Socket;)V

    throw p1
.end method

.method private o(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Lvi0$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvi0$h;-><init>(Z)V

    iget-object v1, p0, Lzh0;->e:Ljava/net/Socket;

    iget-object v2, p0, Lzh0;->c:Lnh0;

    .line 3
    invoke-virtual {v2}, Lnh0;->a()Lkg0;

    move-result-object v2

    invoke-virtual {v2}, Lkg0;->l()Ldh0;

    move-result-object v2

    invoke-virtual {v2}, Ldh0;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzh0;->i:Lzj0;

    iget-object v4, p0, Lzh0;->j:Lyj0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lvi0$h;->d(Ljava/net/Socket;Ljava/lang/String;Lzj0;Lyj0;)Lvi0$h;

    .line 4
    invoke-virtual {v0, p0}, Lvi0$h;->b(Lvi0$j;)Lvi0$h;

    .line 5
    invoke-virtual {v0, p1}, Lvi0$h;->c(I)Lvi0$h;

    .line 6
    invoke-virtual {v0}, Lvi0$h;->a()Lvi0;

    move-result-object p1

    iput-object p1, p0, Lzh0;->h:Lvi0;

    .line 7
    invoke-virtual {p1}, Lvi0;->B0()V

    return-void
.end method


# virtual methods
.method public a(Lvi0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->b:Ltg0;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lvi0;->q0()I

    move-result p1

    iput p1, p0, Lzh0;->m:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Laj0;)V
    .locals 1

    .line 1
    sget-object v0, Lqi0;->g:Lqi0;

    invoke-virtual {p1, v0}, Laj0;->d(Lqi0;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->d:Ljava/net/Socket;

    invoke-static {v0}, Lrh0;->h(Ljava/net/Socket;)V

    return-void
.end method

.method public d(IIIIZLog0;Lzg0;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Lzh0;->g:Lhh0;

    if-nez v0, :cond_b

    .line 2
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->a()Lkg0;

    move-result-object v0

    invoke-virtual {v0}, Lkg0;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v10, Lyh0;

    invoke-direct {v10, v0}, Lyh0;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lug0;->h:Lug0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->a()Lkg0;

    move-result-object v0

    invoke-virtual {v0}, Lkg0;->l()Ldh0;

    move-result-object v0

    invoke-virtual {v0}, Ldh0;->j()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmj0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lbi0;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    invoke-static {v3, v0, v4}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbi0;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 9
    :cond_1
    new-instance v0, Lbi0;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbi0;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 10
    :cond_2
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->a()Lkg0;

    move-result-object v0

    invoke-virtual {v0}, Lkg0;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lhh0;->g:Lhh0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 11
    :goto_1
    :try_start_0
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 12
    invoke-direct/range {v1 .. v6}, Lzh0;->f(IIILog0;Lzg0;)V

    .line 13
    iget-object v0, v7, Lzh0;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, p1

    move v2, p2

    goto :goto_2

    :cond_4
    move v1, p1

    move v2, p2

    .line 14
    :try_start_1
    invoke-direct {p0, p1, p2, v8, v9}, Lzh0;->e(IILog0;Lzg0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v3, p4

    .line 15
    :try_start_2
    invoke-direct {p0, v10, v3, v8, v9}, Lzh0;->g(Lyh0;ILog0;Lzg0;)V

    .line 16
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->d()Ljava/net/InetSocketAddress;

    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->b()Ljava/net/Proxy;

    .line 17
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :goto_3
    iget-object v0, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lzh0;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v1, Lbi0;

    invoke-direct {v1, v0}, Lbi0;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 21
    :cond_6
    :goto_4
    iget-object v0, v7, Lzh0;->h:Lvi0;

    if-eqz v0, :cond_7

    .line 22
    iget-object v1, v7, Lzh0;->b:Ltg0;

    monitor-enter v1

    .line 23
    :try_start_3
    iget-object v0, v7, Lzh0;->h:Lvi0;

    invoke-virtual {v0}, Lvi0;->q0()I

    move-result v0

    iput v0, v7, Lzh0;->m:I

    .line 24
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v3, p4

    goto :goto_7

    :catch_2
    move-exception v0

    move v1, p1

    move v2, p2

    goto :goto_6

    .line 25
    :goto_7
    iget-object v4, v7, Lzh0;->e:Ljava/net/Socket;

    invoke-static {v4}, Lrh0;->h(Ljava/net/Socket;)V

    .line 26
    iget-object v4, v7, Lzh0;->d:Ljava/net/Socket;

    invoke-static {v4}, Lrh0;->h(Ljava/net/Socket;)V

    .line 27
    iput-object v11, v7, Lzh0;->e:Ljava/net/Socket;

    .line 28
    iput-object v11, v7, Lzh0;->d:Ljava/net/Socket;

    .line 29
    iput-object v11, v7, Lzh0;->i:Lzj0;

    .line 30
    iput-object v11, v7, Lzh0;->j:Lyj0;

    .line 31
    iput-object v11, v7, Lzh0;->f:Lbh0;

    .line 32
    iput-object v11, v7, Lzh0;->g:Lhh0;

    .line 33
    iput-object v11, v7, Lzh0;->h:Lvi0;

    .line 34
    iget-object v4, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v4}, Lnh0;->d()Ljava/net/InetSocketAddress;

    iget-object v4, v7, Lzh0;->c:Lnh0;

    invoke-virtual {v4}, Lnh0;->b()Ljava/net/Proxy;

    .line 35
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v12, :cond_8

    .line 36
    new-instance v12, Lbi0;

    invoke-direct {v12, v0}, Lbi0;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 37
    :cond_8
    invoke-virtual {v12, v0}, Lbi0;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    .line 38
    invoke-virtual {v10, v0}, Lyh0;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 39
    :cond_9
    throw v12

    .line 40
    :cond_a
    new-instance v0, Lbi0;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbi0;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 41
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public h()Lbh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->f:Lbh0;

    return-object v0
.end method

.method public i(Lkg0;Lnh0;)Z
    .locals 4
    .param p2    # Lnh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lzh0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lzh0;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lzh0;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lph0;->a:Lph0;

    iget-object v1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lph0;->g(Lkg0;Lkg0;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Lkg0;->l()Ldh0;

    move-result-object v0

    invoke-virtual {v0}, Ldh0;->j()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 5
    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v0, p0, Lzh0;->h:Lvi0;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p2}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object v0, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 9
    :cond_6
    iget-object v0, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v0}, Lnh0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lnh0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-virtual {p2}, Lnh0;->a()Lkg0;

    move-result-object p2

    invoke-virtual {p2}, Lkg0;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lrj0;->a:Lrj0;

    if-eq p2, v0, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p1}, Lkg0;->l()Ldh0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzh0;->p(Ldh0;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 12
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lkg0;->a()Lqg0;

    move-result-object p2

    invoke-virtual {p1}, Lkg0;->l()Ldh0;

    move-result-object p1

    invoke-virtual {p1}, Ldh0;->j()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lzh0;->f:Lbh0;

    .line 14
    invoke-virtual {v0}, Lbh0;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lqg0;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public j(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lzh0;->h:Lvi0;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvi0;->p0(J)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 4
    :try_start_0
    iget-object p1, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v2, p0, Lzh0;->i:Lzj0;

    invoke-interface {v2}, Lzj0;->t()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 7
    :try_start_2
    iget-object v2, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v2, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lzh0;->e:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->h:Lvi0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Lgh0;Leh0$a;Ldi0;)Lgi0;
    .locals 4

    .line 1
    iget-object v0, p0, Lzh0;->h:Lvi0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lui0;

    iget-object v1, p0, Lzh0;->h:Lvi0;

    invoke-direct {v0, p1, p2, p3, v1}, Lui0;-><init>(Lgh0;Leh0$a;Ldi0;Lvi0;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    check-cast p2, Lji0;

    invoke-virtual {p2}, Lji0;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    iget-object v0, p0, Lzh0;->i:Lzj0;

    invoke-interface {v0}, Lrk0;->timeout()Lsk0;

    move-result-object v0

    invoke-virtual {p2}, Lji0;->h()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    .line 5
    iget-object v0, p0, Lzh0;->j:Lyj0;

    invoke-interface {v0}, Lqk0;->timeout()Lsk0;

    move-result-object v0

    invoke-virtual {p2}, Lji0;->k()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    .line 6
    new-instance p2, Loi0;

    iget-object v0, p0, Lzh0;->i:Lzj0;

    iget-object v1, p0, Lzh0;->j:Lyj0;

    invoke-direct {p2, p1, p3, v0, v1}, Loi0;-><init>(Lgh0;Ldi0;Lzj0;Lyj0;)V

    return-object p2
.end method

.method public m()Lnh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->c:Lnh0;

    return-object v0
.end method

.method public n()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lzh0;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public p(Ldh0;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ldh0;->t()I

    move-result v0

    iget-object v1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->t()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lzh0;->f:Lbh0;

    if-eqz v0, :cond_1

    sget-object v0, Lrj0;->a:Lrj0;

    .line 4
    invoke-virtual {p1}, Ldh0;->j()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lzh0;->f:Lbh0;

    invoke-virtual {v3}, Lbh0;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {v0, p1, v3}, Lrj0;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 2
    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh0;->c:Lnh0;

    invoke-virtual {v1}, Lnh0;->a()Lkg0;

    move-result-object v1

    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 3
    invoke-virtual {v1}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh0;->c:Lnh0;

    .line 4
    invoke-virtual {v1}, Lnh0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lzh0;->f:Lbh0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbh0;->a()Lrg0;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh0;->g:Lhh0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
