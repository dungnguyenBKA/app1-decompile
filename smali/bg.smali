.class public Lbg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbg$a;
    }
.end annotation


# instance fields
.field private final a:Ldg;

.field private final b:Lbg$a;


# direct methods
.method public constructor <init>(Lk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ldg;

    invoke-direct {v0, p1}, Ldg;-><init>(Lk2;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lbg$a;

    invoke-direct {p1}, Lbg$a;-><init>()V

    iput-object p1, p0, Lbg;->b:Lbg$a;

    .line 4
    iput-object v0, p0, Lbg;->a:Ldg;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lag<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbg;->a:Ldg;

    invoke-virtual {v0, p1, p2, p3}, Ldg;->a(Ljava/lang/Class;Ljava/lang/Class;Lag;)V

    .line 2
    iget-object p1, p0, Lbg;->b:Lbg$a;

    invoke-virtual {p1}, Lbg$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbg;->a:Ldg;

    invoke-virtual {v0, p1}, Ldg;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lzf<",
            "TA;*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lbg;->b:Lbg$a;

    invoke-virtual {v1, v0}, Lbg$a;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lbg;->a:Ldg;

    invoke-virtual {v1, v0}, Ldg;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lbg;->b:Lbg$a;

    invoke-virtual {v2, v0, v1}, Lbg$a;->c(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzf;

    .line 11
    invoke-interface {v6, p1}, Lzf;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 13
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 15
    :cond_4
    new-instance v0, Lcom/bumptech/glide/g$c;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/g$c;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v0

    .line 16
    :cond_5
    new-instance v0, Lcom/bumptech/glide/g$c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g$c;-><init>(Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized d(Ljava/lang/Class;Ljava/lang/Class;Lag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lag<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbg;->a:Ldg;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ldg;->f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ldg;->a(Ljava/lang/Class;Ljava/lang/Class;Lag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lag;

    .line 7
    invoke-interface {p2}, Lag;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lbg;->b:Lbg$a;

    invoke-virtual {p1}, Lbg$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
