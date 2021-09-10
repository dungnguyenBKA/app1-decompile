.class public Landroidx/work/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/l$a;
    }
.end annotation


# static fields
.field static final t:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/work/WorkerParameters$a;

.field f:Lc6;

.field g:Landroidx/work/ListenableWorker;

.field h:Landroidx/work/ListenableWorker$a;

.field private i:Landroidx/work/b;

.field private j:Lm6;

.field private k:Landroidx/work/impl/WorkDatabase;

.field private l:Ld6;

.field private m:Lu5;

.field private n:Lg6;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ll6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field r:Luy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luy<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/l;->t:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/l$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Landroidx/work/impl/l;->h:Landroidx/work/ListenableWorker$a;

    .line 4
    invoke-static {}, Ll6;->j()Ll6;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/l;->q:Ll6;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/work/impl/l;->r:Luy;

    .line 6
    iget-object v1, p1, Landroidx/work/impl/l$a;->a:Landroid/content/Context;

    iput-object v1, p0, Landroidx/work/impl/l;->b:Landroid/content/Context;

    .line 7
    iget-object v1, p1, Landroidx/work/impl/l$a;->b:Lm6;

    iput-object v1, p0, Landroidx/work/impl/l;->j:Lm6;

    .line 8
    iget-object v1, p1, Landroidx/work/impl/l$a;->e:Ljava/lang/String;

    iput-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Landroidx/work/impl/l$a;->f:Ljava/util/List;

    iput-object v1, p0, Landroidx/work/impl/l;->d:Ljava/util/List;

    .line 10
    iget-object v1, p1, Landroidx/work/impl/l$a;->g:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Landroidx/work/impl/l;->e:Landroidx/work/WorkerParameters$a;

    .line 11
    iput-object v0, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    .line 12
    iget-object v0, p1, Landroidx/work/impl/l$a;->c:Landroidx/work/b;

    iput-object v0, p0, Landroidx/work/impl/l;->i:Landroidx/work/b;

    .line 13
    iget-object p1, p1, Landroidx/work/impl/l$a;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/l;->l:Ld6;

    .line 15
    iget-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->p()Lu5;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/l;->m:Lu5;

    .line 16
    iget-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lg6;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/l;->n:Lg6;

    return-void
.end method

.method private b(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Landroidx/work/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Landroidx/work/impl/l;->f:Lc6;

    invoke-virtual {p1}, Lc6;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Landroidx/work/impl/l;->g()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/g;->c()V

    .line 8
    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v0, Landroidx/work/m;->d:Landroidx/work/m;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast p1, Le6;

    invoke-virtual {p1, v0, v3}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Landroidx/work/impl/l;->h:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 10
    invoke-virtual {p1}, Landroidx/work/ListenableWorker$a$c;->a()Landroidx/work/e;

    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v3, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v3, p1}, Le6;->q(Ljava/lang/String;Landroidx/work/e;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    iget-object p1, p0, Landroidx/work/impl/l;->m:Lu5;

    iget-object v0, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast p1, Lv5;

    invoke-virtual {p1, v0}, Lv5;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Landroidx/work/impl/l;->l:Ld6;

    check-cast v5, Le6;

    invoke-virtual {v5, v0}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v5

    sget-object v6, Landroidx/work/m;->f:Landroidx/work/m;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Landroidx/work/impl/l;->m:Lu5;

    .line 16
    check-cast v5, Lv5;

    invoke-virtual {v5, v0}, Lv5;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v5, v6, v7, v8}, Landroidx/work/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    iget-object v5, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v6, Landroidx/work/m;->b:Landroidx/work/m;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2

    check-cast v5, Le6;

    invoke-virtual {v5, v6, v7}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Landroidx/work/impl/l;->l:Ld6;

    check-cast v5, Le6;

    invoke-virtual {v5, v0, v3, v4}, Le6;->r(Ljava/lang/String;J)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/room/g;->g()V

    .line 24
    invoke-direct {p0, v2}, Landroidx/work/impl/l;->h(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 26
    invoke-direct {p0, v2}, Landroidx/work/impl/l;->h(Z)V

    .line 27
    throw p1

    .line 28
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 29
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 30
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-direct {p0}, Landroidx/work/impl/l;->f()V

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    iget-object p1, p0, Landroidx/work/impl/l;->f:Lc6;

    invoke-virtual {p1}, Lc6;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-direct {p0}, Landroidx/work/impl/l;->g()V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/l;->j()V

    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    check-cast v1, Le6;

    invoke-virtual {v1, p1}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v1

    sget-object v2, Landroidx/work/m;->g:Landroidx/work/m;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v2, Landroidx/work/m;->e:Landroidx/work/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/l;->m:Lu5;

    check-cast v1, Lv5;

    invoke-virtual {v1, p1}, Lv5;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v2, Landroidx/work/m;->b:Landroidx/work/m;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3, v4}, Le6;->r(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3, v4}, Le6;->n(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 7
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/g;->g()V

    .line 9
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    .line 10
    throw v1
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3, v4}, Le6;->r(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v2, Landroidx/work/m;->b:Landroidx/work/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v1, Le6;

    invoke-virtual {v1, v2}, Le6;->p(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Le6;

    invoke-virtual {v1, v2, v3, v4}, Le6;->n(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 8
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/g;->g()V

    .line 10
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    .line 11
    throw v1
.end method

.method private h(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v0

    check-cast v0, Le6;

    invoke-virtual {v0}, Le6;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/work/impl/l;->b:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/e;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 7
    iget-object v0, p0, Landroidx/work/impl/l;->q:Ll6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll6;->i(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 9
    throw p1
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v1}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/m;->c:Landroidx/work/m;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-direct {p0, v2}, Landroidx/work/impl/l;->h(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-direct {p0, v3}, Landroidx/work/impl/l;->h(Z)V

    :goto_0
    return-void
.end method

.method private k()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/l;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v2}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, v1}, Landroidx/work/impl/l;->h(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/work/m;->a()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method


# virtual methods
.method public a()Luy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->q:Ll6;

    return-object v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/work/impl/l;->s:Z

    .line 2
    invoke-direct {p0}, Landroidx/work/impl/l;->k()Z

    .line 3
    iget-object v1, p0, Landroidx/work/impl/l;->r:Luy;

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Lj6;

    invoke-virtual {v1, v0}, Lj6;->cancel(Z)Z

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->stop()V

    :cond_1
    return-void
.end method

.method e()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/l;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v2}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, v1}, Landroidx/work/impl/l;->h(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Landroidx/work/m;->c:Landroidx/work/m;

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/work/impl/l;->h:Landroidx/work/ListenableWorker$a;

    invoke-direct {p0, v0}, Landroidx/work/impl/l;->b(Landroidx/work/ListenableWorker$a;)V

    .line 7
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v1}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/work/m;->a()Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroidx/work/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-direct {p0}, Landroidx/work/impl/l;->f()V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 13
    throw v0

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/l;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/d;

    .line 16
    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/d;->cancel(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/l;->i:Landroidx/work/b;

    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Landroidx/work/impl/l;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroidx/work/impl/l;->d(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/l;->h:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$a;->a()Landroidx/work/e;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v3, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v2, Le6;

    invoke-virtual {v2, v3, v1}, Le6;->q(Ljava/lang/String;Landroidx/work/e;)V

    .line 6
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 8
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/g;->g()V

    .line 10
    invoke-direct {p0, v0}, Landroidx/work/impl/l;->h(Z)V

    .line 11
    throw v1
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/work/impl/l;->n:Lg6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Lh6;

    invoke-virtual {v0, v1}, Lh6;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/l;->o:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Landroidx/work/impl/l;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 13
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v1}, Le6;->j(Ljava/lang/String;)Lc6;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/l;->f:Lc6;

    if-nez v0, :cond_3

    .line 14
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const-string v3, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 15
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    invoke-direct {p0, v5}, Landroidx/work/impl/l;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    goto/16 :goto_7

    .line 19
    :cond_3
    :try_start_1
    iget-object v1, v0, Lc6;->b:Landroidx/work/m;

    sget-object v3, Landroidx/work/m;->b:Landroidx/work/m;

    if-eq v1, v3, :cond_4

    .line 20
    invoke-direct {p0}, Landroidx/work/impl/l;->i()V

    .line 21
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->o()V

    .line 22
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v4, v4, Lc6;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 23
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v0}, Lc6;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/work/impl/l;->f:Lc6;

    invoke-virtual {v0}, Lc6;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-object v4, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-wide v6, v4, Lc6;->n:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_7

    .line 28
    invoke-virtual {v4}, Lc6;->a()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-gez v4, :cond_7

    .line 29
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    const-string v3, "Delaying execution for %s because it is being executed before schedule."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v6, v6, Lc6;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 30
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 31
    invoke-virtual {v0, v1, v3, v4}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-direct {p0, v2}, Landroidx/work/impl/l;->h(Z)V

    goto :goto_2

    .line 33
    :cond_7
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 35
    iget-object v0, p0, Landroidx/work/impl/l;->f:Lc6;

    invoke-virtual {v0}, Lc6;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v0, v0, Lc6;->e:Landroidx/work/e;

    :goto_4
    move-object v8, v0

    goto :goto_5

    .line 37
    :cond_8
    iget-object v0, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v0, v0, Lc6;->d:Ljava/lang/String;

    invoke-static {v0}, Landroidx/work/g;->a(Ljava/lang/String;)Landroidx/work/g;

    move-result-object v0

    if-nez v0, :cond_9

    .line 38
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v3, v3, Lc6;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {p0}, Landroidx/work/impl/l;->j()V

    goto/16 :goto_7

    .line 40
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v4, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v4, v4, Lc6;->e:Landroidx/work/e;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v6, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v4, Le6;

    invoke-virtual {v4, v6}, Le6;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v0, v1}, Landroidx/work/g;->b(Ljava/util/List;)Landroidx/work/e;

    move-result-object v0

    goto :goto_4

    .line 44
    :goto_5
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iget-object v9, p0, Landroidx/work/impl/l;->o:Ljava/util/List;

    iget-object v10, p0, Landroidx/work/impl/l;->e:Landroidx/work/WorkerParameters$a;

    iget-object v1, p0, Landroidx/work/impl/l;->f:Lc6;

    iget v11, v1, Lc6;->k:I

    iget-object v1, p0, Landroidx/work/impl/l;->i:Landroidx/work/b;

    .line 46
    invoke-virtual {v1}, Landroidx/work/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v12

    iget-object v13, p0, Landroidx/work/impl/l;->j:Lm6;

    iget-object v1, p0, Landroidx/work/impl/l;->i:Landroidx/work/b;

    .line 47
    invoke-virtual {v1}, Landroidx/work/b;->g()Landroidx/work/q;

    move-result-object v14

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/e;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Lm6;Landroidx/work/q;)V

    .line 48
    iget-object v1, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_a

    .line 49
    iget-object v1, p0, Landroidx/work/impl/l;->i:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->g()Landroidx/work/q;

    move-result-object v1

    iget-object v4, p0, Landroidx/work/impl/l;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v6, v6, Lc6;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, v0}, Landroidx/work/q;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    .line 50
    :cond_a
    iget-object v0, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_b

    .line 51
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v3, v3, Lc6;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Worker %s"

    .line 52
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {p0}, Landroidx/work/impl/l;->j()V

    goto/16 :goto_7

    .line 55
    :cond_b
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/l;->t:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/l;->f:Lc6;

    iget-object v3, v3, Lc6;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 57
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 59
    invoke-virtual {p0}, Landroidx/work/impl/l;->j()V

    goto :goto_7

    .line 60
    :cond_c
    iget-object v0, p0, Landroidx/work/impl/l;->g:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 61
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->c()V

    .line 62
    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v1}, Le6;->g(Ljava/lang/String;)Landroidx/work/m;

    move-result-object v0

    if-ne v0, v3, :cond_d

    .line 63
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    sget-object v1, Landroidx/work/m;->c:Landroidx/work/m;

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    check-cast v0, Le6;

    invoke-virtual {v0, v1, v3}, Le6;->s(Landroidx/work/m;[Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Landroidx/work/impl/l;->l:Ld6;

    iget-object v1, p0, Landroidx/work/impl/l;->c:Ljava/lang/String;

    check-cast v0, Le6;

    invoke-virtual {v0, v1}, Le6;->l(Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    .line 65
    :goto_6
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    iget-object v0, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/g;->g()V

    if-eqz v2, :cond_f

    .line 67
    invoke-direct {p0}, Landroidx/work/impl/l;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    .line 68
    :cond_e
    invoke-static {}, Ll6;->j()Ll6;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroidx/work/impl/l;->j:Lm6;

    check-cast v1, Ln6;

    invoke-virtual {v1}, Ln6;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/j;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/j;-><init>(Landroidx/work/impl/l;Ll6;)V

    .line 70
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    iget-object v1, p0, Landroidx/work/impl/l;->p:Ljava/lang/String;

    .line 72
    new-instance v2, Landroidx/work/impl/k;

    invoke-direct {v2, p0, v0, v1}, Landroidx/work/impl/k;-><init>(Landroidx/work/impl/l;Ll6;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/l;->j:Lm6;

    .line 73
    check-cast v1, Ln6;

    invoke-virtual {v1}, Ln6;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v2, v1}, Lj6;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_7

    .line 75
    :cond_f
    invoke-direct {p0}, Landroidx/work/impl/l;->i()V

    :goto_7
    return-void

    :catchall_0
    move-exception v0

    .line 76
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 77
    throw v0

    :catchall_1
    move-exception v0

    .line 78
    iget-object v1, p0, Landroidx/work/impl/l;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/g;->g()V

    .line 79
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
