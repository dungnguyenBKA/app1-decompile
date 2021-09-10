.class public Lgh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Log0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh0$b;
    }
.end annotation


# static fields
.field static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final b:Lxg0;

.field final c:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh0;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh0;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lzg0$b;

.field final i:Ljava/net/ProxySelector;

.field final j:Lwg0;

.field final k:Lwh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final l:Ljavax/net/SocketFactory;

.field final m:Ljavax/net/ssl/SSLSocketFactory;

.field final n:Lqj0;

.field final o:Ljavax/net/ssl/HostnameVerifier;

.field final p:Lqg0;

.field final q:Llg0;

.field final r:Llg0;

.field final s:Ltg0;

.field final t:Lyg0;

.field final u:Z

.field final v:Z

.field final w:Z

.field final x:I

.field final y:I

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lhh0;

    .line 1
    sget-object v2, Lhh0;->f:Lhh0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lhh0;->d:Lhh0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lrh0;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lgh0;->C:Ljava/util/List;

    new-array v0, v0, [Lug0;

    .line 2
    sget-object v1, Lug0;->g:Lug0;

    aput-object v1, v0, v3

    sget-object v1, Lug0;->h:Lug0;

    aput-object v1, v0, v4

    invoke-static {v0}, Lrh0;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgh0;->D:Ljava/util/List;

    .line 3
    new-instance v0, Lgh0$a;

    invoke-direct {v0}, Lgh0$a;-><init>()V

    sput-object v0, Lph0;->a:Lph0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lgh0$b;

    invoke-direct {v0}, Lgh0$b;-><init>()V

    invoke-direct {p0, v0}, Lgh0;-><init>(Lgh0$b;)V

    return-void
.end method

.method constructor <init>(Lgh0$b;)V
    .locals 6

    const-string v0, "No System TLS"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v1, p1, Lgh0$b;->a:Lxg0;

    iput-object v1, p0, Lgh0;->b:Lxg0;

    .line 4
    iget-object v1, p1, Lgh0$b;->b:Ljava/net/Proxy;

    iput-object v1, p0, Lgh0;->c:Ljava/net/Proxy;

    .line 5
    iget-object v1, p1, Lgh0$b;->c:Ljava/util/List;

    iput-object v1, p0, Lgh0;->d:Ljava/util/List;

    .line 6
    iget-object v1, p1, Lgh0$b;->d:Ljava/util/List;

    iput-object v1, p0, Lgh0;->e:Ljava/util/List;

    .line 7
    iget-object v2, p1, Lgh0$b;->e:Ljava/util/List;

    invoke-static {v2}, Lrh0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lgh0;->f:Ljava/util/List;

    .line 8
    iget-object v2, p1, Lgh0$b;->f:Ljava/util/List;

    invoke-static {v2}, Lrh0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lgh0;->g:Ljava/util/List;

    .line 9
    iget-object v2, p1, Lgh0$b;->g:Lzg0$b;

    iput-object v2, p0, Lgh0;->h:Lzg0$b;

    .line 10
    iget-object v2, p1, Lgh0$b;->h:Ljava/net/ProxySelector;

    iput-object v2, p0, Lgh0;->i:Ljava/net/ProxySelector;

    .line 11
    iget-object v2, p1, Lgh0$b;->i:Lwg0;

    iput-object v2, p0, Lgh0;->j:Lwg0;

    .line 12
    iget-object v2, p1, Lgh0$b;->j:Lwh0;

    iput-object v2, p0, Lgh0;->k:Lwh0;

    .line 13
    iget-object v2, p1, Lgh0$b;->k:Ljavax/net/SocketFactory;

    iput-object v2, p0, Lgh0;->l:Ljavax/net/SocketFactory;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lug0;

    if-nez v4, :cond_1

    .line 15
    iget-boolean v4, v5, Lug0;->a:Z

    if-eqz v4, :cond_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p1, Lgh0$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v5, 0x0

    if-nez v1, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 20
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 21
    array-length v4, v1

    if-ne v4, v2, :cond_4

    aget-object v4, v1, v3

    instance-of v4, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_4

    .line 22
    aget-object v1, v1, v3

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v4

    invoke-virtual {v4}, Lmj0;->i()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v2, v3

    .line 24
    invoke-virtual {v4, v5, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    iput-object v0, p0, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 27
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmj0;->c(Ljavax/net/ssl/X509TrustManager;)Lqj0;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lgh0;->n:Lqj0;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    invoke-static {v0, p1}, Lrh0;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 30
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 32
    invoke-static {v0, p1}, Lrh0;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 33
    :cond_5
    :goto_1
    iput-object v1, p0, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 34
    iget-object v0, p1, Lgh0$b;->m:Lqj0;

    iput-object v0, p0, Lgh0;->n:Lqj0;

    .line 35
    :goto_2
    iget-object v0, p0, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    .line 36
    invoke-static {}, Lmj0;->h()Lmj0;

    move-result-object v0

    iget-object v1, p0, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lmj0;->e(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 37
    :cond_6
    iget-object v0, p1, Lgh0$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lgh0;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 38
    iget-object v0, p1, Lgh0$b;->o:Lqg0;

    iget-object v1, p0, Lgh0;->n:Lqj0;

    invoke-virtual {v0, v1}, Lqg0;->c(Lqj0;)Lqg0;

    move-result-object v0

    iput-object v0, p0, Lgh0;->p:Lqg0;

    .line 39
    iget-object v0, p1, Lgh0$b;->p:Llg0;

    iput-object v0, p0, Lgh0;->q:Llg0;

    .line 40
    iget-object v0, p1, Lgh0$b;->q:Llg0;

    iput-object v0, p0, Lgh0;->r:Llg0;

    .line 41
    iget-object v0, p1, Lgh0$b;->r:Ltg0;

    iput-object v0, p0, Lgh0;->s:Ltg0;

    .line 42
    iget-object v0, p1, Lgh0$b;->s:Lyg0;

    iput-object v0, p0, Lgh0;->t:Lyg0;

    .line 43
    iget-boolean v0, p1, Lgh0$b;->t:Z

    iput-boolean v0, p0, Lgh0;->u:Z

    .line 44
    iget-boolean v0, p1, Lgh0$b;->u:Z

    iput-boolean v0, p0, Lgh0;->v:Z

    .line 45
    iget-boolean v0, p1, Lgh0$b;->v:Z

    iput-boolean v0, p0, Lgh0;->w:Z

    .line 46
    iget v0, p1, Lgh0$b;->w:I

    iput v0, p0, Lgh0;->x:I

    .line 47
    iget v0, p1, Lgh0$b;->x:I

    iput v0, p0, Lgh0;->y:I

    .line 48
    iget v0, p1, Lgh0$b;->y:I

    iput v0, p0, Lgh0;->z:I

    .line 49
    iget v0, p1, Lgh0$b;->z:I

    iput v0, p0, Lgh0;->A:I

    .line 50
    iget p1, p1, Lgh0$b;->A:I

    iput p1, p0, Lgh0;->B:I

    .line 51
    iget-object p1, p0, Lgh0;->f:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 52
    iget-object p1, p0, Lgh0;->g:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 53
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null network interceptor: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgh0;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null interceptor: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgh0;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public a()Llg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->r:Llg0;

    return-object v0
.end method

.method public b()Lqg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->p:Lqg0;

    return-object v0
.end method

.method public c()Ltg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->s:Ltg0;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgh0;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()Lwg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->j:Lwg0;

    return-object v0
.end method

.method public f()Lyg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->t:Lyg0;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgh0;->v:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgh0;->u:Z

    return v0
.end method

.method public i()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public j()Lgh0$b;
    .locals 1

    .line 1
    new-instance v0, Lgh0$b;

    invoke-direct {v0, p0}, Lgh0$b;-><init>(Lgh0;)V

    return-object v0
.end method

.method public k(Ljh0;)Log0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lih0;->c(Lgh0;Ljh0;Z)Lih0;

    move-result-object p1

    return-object p1
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lgh0;->B:I

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgh0;->d:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lgh0;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public p()Llg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->q:Llg0;

    return-object v0
.end method

.method public q()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgh0;->w:Z

    return v0
.end method

.method public s()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->l:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public t()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
