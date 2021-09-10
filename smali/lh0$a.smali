.class public Llh0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Lhh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:I

.field d:Ljava/lang/String;

.field e:Lbh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lch0$a;

.field g:Lmh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field i:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field j:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Llh0$a;->c:I

    .line 3
    new-instance v0, Lch0$a;

    invoke-direct {v0}, Lch0$a;-><init>()V

    iput-object v0, p0, Llh0$a;->f:Lch0$a;

    return-void
.end method

.method constructor <init>(Llh0;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Llh0$a;->c:I

    .line 6
    iget-object v0, p1, Llh0;->b:Ljh0;

    iput-object v0, p0, Llh0$a;->a:Ljh0;

    .line 7
    iget-object v0, p1, Llh0;->c:Lhh0;

    iput-object v0, p0, Llh0$a;->b:Lhh0;

    .line 8
    iget v0, p1, Llh0;->d:I

    iput v0, p0, Llh0$a;->c:I

    .line 9
    iget-object v0, p1, Llh0;->e:Ljava/lang/String;

    iput-object v0, p0, Llh0$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Llh0;->f:Lbh0;

    iput-object v0, p0, Llh0$a;->e:Lbh0;

    .line 11
    iget-object v0, p1, Llh0;->g:Lch0;

    invoke-virtual {v0}, Lch0;->e()Lch0$a;

    move-result-object v0

    iput-object v0, p0, Llh0$a;->f:Lch0$a;

    .line 12
    iget-object v0, p1, Llh0;->h:Lmh0;

    iput-object v0, p0, Llh0$a;->g:Lmh0;

    .line 13
    iget-object v0, p1, Llh0;->i:Llh0;

    iput-object v0, p0, Llh0$a;->h:Llh0;

    .line 14
    iget-object v0, p1, Llh0;->j:Llh0;

    iput-object v0, p0, Llh0$a;->i:Llh0;

    .line 15
    iget-object v0, p1, Llh0;->k:Llh0;

    iput-object v0, p0, Llh0$a;->j:Llh0;

    .line 16
    iget-wide v0, p1, Llh0;->l:J

    iput-wide v0, p0, Llh0$a;->k:J

    .line 17
    iget-wide v0, p1, Llh0;->m:J

    iput-wide v0, p0, Llh0$a;->l:J

    return-void
.end method

.method private e(Ljava/lang/String;Llh0;)V
    .locals 1

    .line 1
    iget-object v0, p2, Llh0;->h:Lmh0;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p2, Llh0;->i:Llh0;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p2, Llh0;->j:Llh0;

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Llh0;->k:Llh0;

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".priorResponse != null"

    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".cacheResponse != null"

    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".networkResponse != null"

    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, ".body != null"

    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Llh0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Llh0$a;->f:Lch0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lch0;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p2, p1}, Lch0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lmh0;)Llh0$a;
    .locals 0
    .param p1    # Lmh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llh0$a;->g:Lmh0;

    return-object p0
.end method

.method public c()Llh0;
    .locals 3

    .line 1
    iget-object v0, p0, Llh0$a;->a:Ljh0;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Llh0$a;->b:Lhh0;

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Llh0$a;->c:I

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Llh0$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Llh0;

    invoke-direct {v0, p0}, Llh0;-><init>(Llh0$a;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "code < 0: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llh0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Llh0;)Llh0$a;
    .locals 1
    .param p1    # Llh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Llh0$a;->e(Ljava/lang/String;Llh0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Llh0$a;->i:Llh0;

    return-object p0
.end method

.method public f(I)Llh0$a;
    .locals 0

    .line 1
    iput p1, p0, Llh0$a;->c:I

    return-object p0
.end method

.method public g(Lbh0;)Llh0$a;
    .locals 0
    .param p1    # Lbh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llh0$a;->e:Lbh0;

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Llh0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Llh0$a;->f:Lch0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lch0;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p2, p1}, Lch0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lch0$a;->c(Ljava/lang/String;)Lch0$a;

    .line 6
    iget-object v1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public i(Lch0;)Llh0$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lch0;->e()Lch0$a;

    move-result-object p1

    iput-object p1, p0, Llh0$a;->f:Lch0$a;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Llh0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Llh0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k(Llh0;)Llh0$a;
    .locals 1
    .param p1    # Llh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Llh0$a;->e(Ljava/lang/String;Llh0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Llh0$a;->h:Llh0;

    return-object p0
.end method

.method public l(Llh0;)Llh0$a;
    .locals 1
    .param p1    # Llh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Llh0;->h:Lmh0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Llh0$a;->j:Llh0;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lhh0;)Llh0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Llh0$a;->b:Lhh0;

    return-object p0
.end method

.method public n(J)Llh0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Llh0$a;->l:J

    return-object p0
.end method

.method public o(Ljh0;)Llh0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Llh0$a;->a:Ljh0;

    return-object p0
.end method

.method public p(J)Llh0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Llh0$a;->k:J

    return-object p0
.end method
