.class public Lcom/bumptech/glide/integration/okhttp3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc;
.implements Lpg0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Luc<",
        "Ljava/io/InputStream;",
        ">;",
        "Lpg0;"
    }
.end annotation


# instance fields
.field private final b:Log0$a;

.field private final c:Lsf;

.field private d:Ljava/io/InputStream;

.field private e:Lmh0;

.field private f:Luc$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Log0;


# direct methods
.method public constructor <init>(Log0$a;Lsf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->b:Log0$a;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/b;->c:Lsf;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->e:Lmh0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lmh0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->f:Luc$a;

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->g:Log0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Log0;->cancel()V

    :cond_0
    return-void
.end method

.method public d()Lcom/bumptech/glide/load/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public e(Lcom/bumptech/glide/f;Luc$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Luc$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljh0$a;

    invoke-direct {p1}, Ljh0$a;-><init>()V

    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->c:Lsf;

    invoke-virtual {v0}, Lsf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljh0$a;->g(Ljava/lang/String;)Ljh0$a;

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->c:Lsf;

    invoke-virtual {v0}, Lsf;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljh0$a;->b()Ljh0;

    move-result-object p1

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/b;->f:Luc$a;

    .line 7
    iget-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/b;->b:Log0$a;

    check-cast p2, Lgh0;

    invoke-virtual {p2, p1}, Lgh0;->k(Ljh0;)Log0;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->g:Log0;

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->g:Log0;

    invoke-interface {p1, p0}, Log0;->o(Lpg0;)V

    return-void
.end method

.method public onFailure(Log0;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "OkHttpFetcher"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->f:Luc$a;

    invoke-interface {p1, p2}, Luc$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Log0;Llh0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Llh0;->j()Lmh0;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->e:Lmh0;

    .line 2
    invoke-virtual {p2}, Llh0;->i0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->e:Lmh0;

    const-string p2, "Argument must not be null"

    .line 4
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lmh0;->contentLength()J

    move-result-wide p1

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/b;->e:Lmh0;

    invoke-virtual {v0}, Lmh0;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lal;->o(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->d:Ljava/io/InputStream;

    .line 7
    iget-object p2, p0, Lcom/bumptech/glide/integration/okhttp3/b;->f:Luc$a;

    invoke-interface {p2, p1}, Luc$a;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->f:Luc$a;

    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-virtual {p2}, Llh0;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Llh0;->L()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Luc$a;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
