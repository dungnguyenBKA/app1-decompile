.class public final Lci0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lci0$a;
    }
.end annotation


# instance fields
.field private final a:Lkg0;

.field private final b:Lai0;

.field private final c:Log0;

.field private final d:Lzg0;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnh0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkg0;Lai0;Log0;Lzg0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lci0;->e:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lci0;->g:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lci0;->h:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lci0;->a:Lkg0;

    .line 6
    iput-object p2, p0, Lci0;->b:Lai0;

    .line 7
    iput-object p3, p0, Lci0;->c:Log0;

    .line 8
    iput-object p4, p0, Lci0;->d:Lzg0;

    .line 9
    invoke-virtual {p1}, Lkg0;->l()Ldh0;

    move-result-object p2

    invoke-virtual {p1}, Lkg0;->g()Ljava/net/Proxy;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lci0;->e:Ljava/util/List;

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lkg0;->i()Ljava/net/ProxySelector;

    move-result-object p1

    invoke-virtual {p2}, Ldh0;->z()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    invoke-static {p1}, Lrh0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    .line 14
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, p4

    invoke-static {p1}, Lrh0;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lci0;->e:Ljava/util/List;

    .line 15
    :goto_1
    iput p4, p0, Lci0;->f:I

    return-void
.end method

.method private c()Z
    .locals 2

    .line 1
    iget v0, p0, Lci0;->f:I

    iget-object v1, p0, Lci0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lnh0;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lci0;->a:Lkg0;

    invoke-virtual {v0}, Lkg0;->i()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lci0;->a:Lkg0;

    invoke-virtual {v0}, Lkg0;->i()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lci0;->a:Lkg0;

    .line 3
    invoke-virtual {v1}, Lkg0;->l()Ldh0;

    move-result-object v1

    invoke-virtual {v1}, Ldh0;->z()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lnh0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lci0;->b:Lai0;

    invoke-virtual {p2, p1}, Lai0;->b(Lnh0;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lci0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lci0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Lci0$a;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lci0;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lci0;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4
    invoke-direct {p0}, Lci0;->c()Z

    move-result v1

    const-string v2, "No route to "

    if-eqz v1, :cond_b

    .line 5
    iget-object v1, p0, Lci0;->e:Ljava/util/List;

    iget v3, p0, Lci0;->f:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lci0;->f:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lci0;->g:Ljava/util/List;

    .line 7
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 9
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_3

    .line 10
    check-cast v3, Ljava/net/InetSocketAddress;

    .line 11
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-nez v4, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 14
    :goto_0
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    goto :goto_2

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    :goto_1
    iget-object v3, p0, Lci0;->a:Lkg0;

    invoke-virtual {v3}, Lkg0;->l()Ldh0;

    move-result-object v3

    invoke-virtual {v3}, Ldh0;->j()Ljava/lang/String;

    move-result-object v4

    .line 18
    iget-object v3, p0, Lci0;->a:Lkg0;

    invoke-virtual {v3}, Lkg0;->l()Ldh0;

    move-result-object v3

    invoke-virtual {v3}, Ldh0;->t()I

    move-result v3

    :goto_2
    const/4 v5, 0x1

    if-lt v3, v5, :cond_a

    const v5, 0xffff

    if-gt v3, v5, :cond_a

    .line 19
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_5

    .line 20
    iget-object v2, p0, Lci0;->g:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_5
    iget-object v2, p0, Lci0;->d:Lzg0;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v2, p0, Lci0;->a:Lkg0;

    invoke-virtual {v2}, Lkg0;->c()Lyg0;

    move-result-object v2

    invoke-interface {v2, v4}, Lyg0;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 25
    iget-object v4, p0, Lci0;->d:Lzg0;

    .line 26
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    .line 28
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 29
    iget-object v8, p0, Lci0;->g:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v7, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_6
    :goto_4
    iget-object v2, p0, Lci0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v6, v2, :cond_8

    .line 31
    new-instance v3, Lnh0;

    iget-object v4, p0, Lci0;->a:Lkg0;

    iget-object v5, p0, Lci0;->g:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4, v1, v5}, Lnh0;-><init>(Lkg0;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 32
    iget-object v4, p0, Lci0;->b:Lai0;

    invoke-virtual {v4, v3}, Lai0;->c(Lnh0;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 33
    iget-object v4, p0, Lci0;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 35
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_7

    .line 36
    :cond_9
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lci0;->a:Lkg0;

    invoke-virtual {v2}, Lkg0;->c()Lyg0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_b
    new-instance v0, Ljava/net/SocketException;

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lci0;->a:Lkg0;

    invoke-virtual {v2}, Lkg0;->l()Ldh0;

    move-result-object v2

    invoke-virtual {v2}, Ldh0;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lci0;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_c
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    iget-object v1, p0, Lci0;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v1, p0, Lci0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    :cond_d
    new-instance v1, Lci0$a;

    invoke-direct {v1, v0}, Lci0$a;-><init>(Ljava/util/List;)V

    return-object v1

    .line 43
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
