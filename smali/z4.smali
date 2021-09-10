.class public Lz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/d;
.implements Lc5;
.implements Landroidx/work/impl/a;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private b:Landroidx/work/impl/i;

.field private c:Ld5;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm6;Landroidx/work/impl/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz4;->d:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lz4;->b:Landroidx/work/impl/i;

    .line 4
    new-instance p3, Ld5;

    invoke-direct {p3, p1, p2, p0}, Ld5;-><init>(Landroid/content/Context;Lm6;Lc5;)V

    iput-object p3, p0, Lz4;->c:Ld5;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs a([Lc6;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lz4;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz4;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V

    .line 3
    iput-boolean v1, p0, Lz4;->e:Z

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    .line 7
    iget-object v7, v6, Lc6;->b:Landroidx/work/m;

    sget-object v8, Landroidx/work/m;->b:Landroidx/work/m;

    if-ne v7, v8, :cond_3

    .line 8
    invoke-virtual {v6}, Lc6;->d()Z

    move-result v7

    if-nez v7, :cond_3

    iget-wide v7, v6, Lc6;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    .line 9
    invoke-virtual {v6}, Lc6;->c()Z

    move-result v7

    if-nez v7, :cond_3

    .line 10
    invoke-virtual {v6}, Lc6;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_1

    iget-object v7, v6, Lc6;->j:Landroidx/work/c;

    .line 12
    invoke-virtual {v7}, Landroidx/work/c;->e()Z

    move-result v7

    if-nez v7, :cond_3

    .line 13
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v6, v6, Lc6;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v7

    sget-object v8, Lz4;->g:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, v6, Lc6;->a:Ljava/lang/String;

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v9, v10}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16
    iget-object v7, p0, Lz4;->b:Landroidx/work/impl/i;

    iget-object v6, v6, Lc6;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroidx/work/impl/i;->o(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lz4;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 19
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v3

    sget-object v5, Lz4;->g:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, ","

    .line 20
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 21
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v1, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lz4;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lz4;->c:Ld5;

    iget-object v1, p0, Lz4;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ld5;->d(Ljava/util/List;)V

    .line 24
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v1

    sget-object v2, Lz4;->g:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lz4;->b:Landroidx/work/impl/i;

    invoke-virtual {v1, v0}, Landroidx/work/impl/i;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object p2, p0, Lz4;->f:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Lz4;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lz4;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6;

    iget-object v3, v3, Lc6;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v3, Lz4;->g:Ljava/lang/String;

    const-string v4, "Stopping tracking for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, p1, v1}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lz4;->d:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lz4;->c:Ld5;

    iget-object v0, p0, Lz4;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Ld5;->d(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lz4;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz4;->b:Landroidx/work/impl/i;

    invoke-virtual {v0}, Landroidx/work/impl/i;->g()Landroidx/work/impl/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/c;->a(Landroidx/work/impl/a;)V

    .line 3
    iput-boolean v1, p0, Lz4;->e:Z

    .line 4
    :cond_0
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v2, Lz4;->g:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lz4;->b:Landroidx/work/impl/i;

    invoke-virtual {v0, p1}, Landroidx/work/impl/i;->q(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v1

    sget-object v2, Lz4;->g:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lz4;->b:Landroidx/work/impl/i;

    invoke-virtual {v1, v0}, Landroidx/work/impl/i;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
