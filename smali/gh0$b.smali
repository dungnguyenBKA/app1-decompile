.class public final Lgh0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field a:Lxg0;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhh0;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lug0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh0;",
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

.field g:Lzg0$b;

.field h:Ljava/net/ProxySelector;

.field i:Lwg0;

.field j:Lwh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field m:Lqj0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lqg0;

.field p:Llg0;

.field q:Llg0;

.field r:Ltg0;

.field s:Lyg0;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgh0$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgh0$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lxg0;

    invoke-direct {v0}, Lxg0;-><init>()V

    iput-object v0, p0, Lgh0$b;->a:Lxg0;

    .line 5
    sget-object v0, Lgh0;->C:Ljava/util/List;

    iput-object v0, p0, Lgh0$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lgh0;->D:Ljava/util/List;

    iput-object v0, p0, Lgh0$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lzg0;->a:Lzg0;

    .line 8
    new-instance v1, Lah0;

    invoke-direct {v1, v0}, Lah0;-><init>(Lzg0;)V

    .line 9
    iput-object v1, p0, Lgh0$b;->g:Lzg0$b;

    .line 10
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lgh0$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lnj0;

    invoke-direct {v0}, Lnj0;-><init>()V

    iput-object v0, p0, Lgh0$b;->h:Ljava/net/ProxySelector;

    .line 12
    :cond_0
    sget-object v0, Lwg0;->a:Lwg0;

    iput-object v0, p0, Lgh0$b;->i:Lwg0;

    .line 13
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lgh0$b;->k:Ljavax/net/SocketFactory;

    .line 14
    sget-object v0, Lrj0;->a:Lrj0;

    iput-object v0, p0, Lgh0$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 15
    sget-object v0, Lqg0;->c:Lqg0;

    iput-object v0, p0, Lgh0$b;->o:Lqg0;

    .line 16
    sget-object v0, Llg0;->a:Llg0;

    iput-object v0, p0, Lgh0$b;->p:Llg0;

    .line 17
    iput-object v0, p0, Lgh0$b;->q:Llg0;

    .line 18
    new-instance v0, Ltg0;

    invoke-direct {v0}, Ltg0;-><init>()V

    iput-object v0, p0, Lgh0$b;->r:Ltg0;

    .line 19
    sget-object v0, Lyg0;->a:Lyg0;

    iput-object v0, p0, Lgh0$b;->s:Lyg0;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lgh0$b;->t:Z

    .line 21
    iput-boolean v0, p0, Lgh0$b;->u:Z

    .line 22
    iput-boolean v0, p0, Lgh0$b;->v:Z

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lgh0$b;->w:I

    const/16 v1, 0x2710

    .line 24
    iput v1, p0, Lgh0$b;->x:I

    .line 25
    iput v1, p0, Lgh0$b;->y:I

    .line 26
    iput v1, p0, Lgh0$b;->z:I

    .line 27
    iput v0, p0, Lgh0$b;->A:I

    return-void
.end method

.method constructor <init>(Lgh0;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgh0$b;->e:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lgh0$b;->f:Ljava/util/List;

    .line 31
    iget-object v2, p1, Lgh0;->b:Lxg0;

    iput-object v2, p0, Lgh0$b;->a:Lxg0;

    .line 32
    iget-object v2, p1, Lgh0;->c:Ljava/net/Proxy;

    iput-object v2, p0, Lgh0$b;->b:Ljava/net/Proxy;

    .line 33
    iget-object v2, p1, Lgh0;->d:Ljava/util/List;

    iput-object v2, p0, Lgh0$b;->c:Ljava/util/List;

    .line 34
    iget-object v2, p1, Lgh0;->e:Ljava/util/List;

    iput-object v2, p0, Lgh0$b;->d:Ljava/util/List;

    .line 35
    iget-object v2, p1, Lgh0;->f:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v0, p1, Lgh0;->g:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v0, p1, Lgh0;->h:Lzg0$b;

    iput-object v0, p0, Lgh0$b;->g:Lzg0$b;

    .line 38
    iget-object v0, p1, Lgh0;->i:Ljava/net/ProxySelector;

    iput-object v0, p0, Lgh0$b;->h:Ljava/net/ProxySelector;

    .line 39
    iget-object v0, p1, Lgh0;->j:Lwg0;

    iput-object v0, p0, Lgh0$b;->i:Lwg0;

    .line 40
    iget-object v0, p1, Lgh0;->k:Lwh0;

    iput-object v0, p0, Lgh0$b;->j:Lwh0;

    .line 41
    iget-object v0, p1, Lgh0;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lgh0$b;->k:Ljavax/net/SocketFactory;

    .line 42
    iget-object v0, p1, Lgh0;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lgh0$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    iget-object v0, p1, Lgh0;->n:Lqj0;

    iput-object v0, p0, Lgh0$b;->m:Lqj0;

    .line 44
    iget-object v0, p1, Lgh0;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lgh0$b;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    iget-object v0, p1, Lgh0;->p:Lqg0;

    iput-object v0, p0, Lgh0$b;->o:Lqg0;

    .line 46
    iget-object v0, p1, Lgh0;->q:Llg0;

    iput-object v0, p0, Lgh0$b;->p:Llg0;

    .line 47
    iget-object v0, p1, Lgh0;->r:Llg0;

    iput-object v0, p0, Lgh0$b;->q:Llg0;

    .line 48
    iget-object v0, p1, Lgh0;->s:Ltg0;

    iput-object v0, p0, Lgh0$b;->r:Ltg0;

    .line 49
    iget-object v0, p1, Lgh0;->t:Lyg0;

    iput-object v0, p0, Lgh0$b;->s:Lyg0;

    .line 50
    iget-boolean v0, p1, Lgh0;->u:Z

    iput-boolean v0, p0, Lgh0$b;->t:Z

    .line 51
    iget-boolean v0, p1, Lgh0;->v:Z

    iput-boolean v0, p0, Lgh0$b;->u:Z

    .line 52
    iget-boolean v0, p1, Lgh0;->w:Z

    iput-boolean v0, p0, Lgh0$b;->v:Z

    .line 53
    iget v0, p1, Lgh0;->x:I

    iput v0, p0, Lgh0$b;->w:I

    .line 54
    iget v0, p1, Lgh0;->y:I

    iput v0, p0, Lgh0$b;->x:I

    .line 55
    iget v0, p1, Lgh0;->z:I

    iput v0, p0, Lgh0$b;->y:I

    .line 56
    iget v0, p1, Lgh0;->A:I

    iput v0, p0, Lgh0$b;->z:I

    .line 57
    iget p1, p1, Lgh0;->B:I

    iput p1, p0, Lgh0$b;->A:I

    return-void
.end method


# virtual methods
.method public a(Leh0;)Lgh0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh0$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lgh0;
    .locals 1

    .line 1
    new-instance v0, Lgh0;

    invoke-direct {v0, p0}, Lgh0;-><init>(Lgh0$b;)V

    return-object v0
.end method

.method public c(Lmg0;)Lgh0$b;
    .locals 0
    .param p1    # Lmg0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lgh0$b;->j:Lwh0;

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lgh0$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lrh0;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgh0$b;->x:I

    return-object p0
.end method

.method public e(Z)Lgh0$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgh0$b;->u:Z

    return-object p0
.end method

.method public f(Z)Lgh0$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgh0$b;->t:Z

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lgh0$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lrh0;->e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lgh0$b;->y:I

    return-object p0
.end method
