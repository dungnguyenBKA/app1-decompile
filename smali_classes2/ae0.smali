.class public final Lae0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe0;
.implements Lke0;


# instance fields
.field b:Llf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llf0<",
            "Lbe0;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbe0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lae0;->c(Lbe0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lgf0;

    invoke-virtual {p1}, Lgf0;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lbe0;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lae0;->c:Z

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lae0;->c:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lae0;->b:Llf0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Llf0;

    invoke-direct {v0}, Llf0;-><init>()V

    .line 6
    iput-object v0, p0, Lae0;->b:Llf0;

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Llf0;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 8
    monitor-exit p0

    return p1

    .line 9
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-interface {p1}, Lbe0;->e()V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lbe0;)Z
    .locals 2

    const-string v0, "Disposable item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lae0;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lae0;->c:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lae0;->b:Llf0;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Llf0;->d(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lae0;->c:Z

    return v0
.end method

.method public e()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lae0;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lae0;->c:Z

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lae0;->c:Z

    .line 6
    iget-object v1, p0, Lae0;->b:Llf0;

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lae0;->b:Llf0;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v1}, Llf0;->b()[Ljava/lang/Object;

    move-result-object v1

    .line 10
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    .line 11
    instance-of v7, v6, Lbe0;

    if-eqz v7, :cond_4

    .line 12
    :try_start_1
    check-cast v6, Lbe0;

    invoke-interface {v6}, Lbe0;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 13
    invoke-static {v6}, Landroidx/core/app/b;->K0(Ljava/lang/Throwable;)V

    if-nez v2, :cond_3

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 17
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkf0;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 18
    :cond_6
    new-instance v0, Lee0;

    invoke-direct {v0, v2}, Lee0;-><init>(Ljava/lang/Iterable;)V

    throw v0

    :cond_7
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
