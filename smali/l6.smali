.class public final Ll6;
.super Lj6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lj6<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj6;-><init>()V

    return-void
.end method

.method public static j()Ll6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ll6<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll6;

    invoke-direct {v0}, Ll6;-><init>()V

    return-object v0
.end method


# virtual methods
.method public i(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lj6;->i(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lj6$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lj6$d;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lj6;->g:Lj6$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lj6$b;->b(Lj6;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0}, Lj6;->b(Lj6;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(Luy;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luy<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj6;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lj6;

    invoke-virtual {v0}, Lj6;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lj6;->e(Luy;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lj6;->g:Lj6$b;

    invoke-virtual {v0, p0, v3, p1}, Lj6$b;->b(Lj6;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p0}, Lj6;->b(Lj6;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 7
    :cond_0
    new-instance v0, Lj6$g;

    invoke-direct {v0, p0, p1}, Lj6$g;-><init>(Lj6;Luy;)V

    .line 8
    sget-object v4, Lj6;->g:Lj6$b;

    invoke-virtual {v4, p0, v3, v0}, Lj6$b;->b(Lj6;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    :try_start_0
    sget-object v1, Lk6;->b:Lk6;

    check-cast p1, Lj6;

    invoke-virtual {p1, v0, v1}, Lj6;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lj6$d;

    invoke-direct {v1, p1}, Lj6$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 11
    :catchall_1
    sget-object v1, Lj6$d;->b:Lj6$d;

    .line 12
    :goto_1
    sget-object p1, Lj6;->g:Lj6$b;

    invoke-virtual {p1, p0, v0, v1}, Lj6$b;->b(Lj6;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lj6;->b:Ljava/lang/Object;

    .line 14
    :cond_2
    instance-of v2, v0, Lj6$c;

    if-eqz v2, :cond_3

    .line 15
    check-cast v0, Lj6$c;

    iget-boolean v0, v0, Lj6$c;->a:Z

    check-cast p1, Lj6;

    invoke-virtual {p1, v0}, Lj6;->cancel(Z)Z

    :cond_3
    :goto_2
    return v1
.end method
