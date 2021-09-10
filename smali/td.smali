.class Ltd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lil$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd$g;,
        Ltd$f;,
        Ltd$d;,
        Ltd$a;,
        Ltd$c;,
        Ltd$e;,
        Ltd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrd$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Ltd<",
        "*>;>;",
        "Lil$d;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/bumptech/glide/load/a;

.field private C:Luc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile D:Lrd;

.field private volatile E:Z

.field private volatile F:Z

.field private final b:Lsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lll;

.field private final e:Ltd$d;

.field private final f:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Ltd<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Ltd$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltd$c<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Ltd$e;

.field private i:Lcom/bumptech/glide/e;

.field private j:Lcom/bumptech/glide/load/g;

.field private k:Lcom/bumptech/glide/f;

.field private l:Lzd;

.field private m:I

.field private n:I

.field private o:Lvd;

.field private p:Lcom/bumptech/glide/load/i;

.field private q:Ltd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltd$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Ltd$g;

.field private t:Ltd$f;

.field private u:J

.field private v:Z

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Thread;

.field private y:Lcom/bumptech/glide/load/g;

.field private z:Lcom/bumptech/glide/load/g;


# direct methods
.method constructor <init>(Ltd$d;Lk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd$d;",
            "Lk2<",
            "Ltd<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lsd;

    invoke-direct {v0}, Lsd;-><init>()V

    iput-object v0, p0, Ltd;->b:Lsd;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltd;->c:Ljava/util/List;

    .line 4
    invoke-static {}, Lll;->a()Lll;

    move-result-object v0

    iput-object v0, p0, Ltd;->d:Lll;

    .line 5
    new-instance v0, Ltd$c;

    invoke-direct {v0}, Ltd$c;-><init>()V

    iput-object v0, p0, Ltd;->g:Ltd$c;

    .line 6
    new-instance v0, Ltd$e;

    invoke-direct {v0}, Ltd$e;-><init>()V

    iput-object v0, p0, Ltd;->h:Ltd$e;

    .line 7
    iput-object p1, p0, Ltd;->e:Ltd$d;

    .line 8
    iput-object p2, p0, Ltd;->f:Lk2;

    return-void
.end method

.method private f(Luc;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lhe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Luc<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lhe<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Luc;->b()V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    sget v1, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 3
    invoke-direct {p0, p2, p3}, Ltd;->g(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lhe;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v3, 0x2

    .line 4
    invoke-static {p3, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded result "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-direct {p0, p3, v1, v2, v0}, Ltd;->l(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    invoke-interface {p1}, Luc;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Luc;->b()V

    throw p2
.end method

.method private g(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lhe;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lhe<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltd;->b:Lsd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsd;->h(Ljava/lang/Class;)Lfe;

    move-result-object v2

    .line 2
    iget-object v0, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Ltd;->b:Lsd;

    .line 5
    invoke-virtual {v1}, Lsd;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    sget-object v3, Lfh;->i:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 8
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i;-><init>()V

    .line 9
    iget-object v4, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/bumptech/glide/load/i;->e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    goto :goto_2

    .line 11
    :goto_3
    iget-object v0, p0, Ltd;->i:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->h()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->k(Ljava/lang/Object;)Lvc;

    move-result-object p1

    .line 12
    :try_start_0
    iget v5, p0, Ltd;->m:I

    iget v6, p0, Ltd;->n:I

    new-instance v7, Ltd$b;

    invoke-direct {v7, p0, p2}, Ltd$b;-><init>(Ltd;Lcom/bumptech/glide/load/a;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lfe;->a(Lvc;Lcom/bumptech/glide/load/i;IILud$a;)Lhe;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {p1}, Lvc;->b()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lvc;->b()V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method private h()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Ltd;->u:J

    const-string v2, "data: "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltd;->A:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltd;->C:Luc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Ltd;->l(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Ltd;->C:Luc;

    iget-object v2, p0, Ltd;->A:Ljava/lang/Object;

    iget-object v3, p0, Ltd;->B:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v1, v2, v3}, Ltd;->f(Luc;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lhe;

    move-result-object v1
    :try_end_0
    .catch Lce; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, Ltd;->z:Lcom/bumptech/glide/load/g;

    iget-object v3, p0, Ltd;->B:Lcom/bumptech/glide/load/a;

    invoke-virtual {v1, v2, v3}, Lce;->g(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;)V

    .line 5
    iget-object v2, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    .line 6
    iget-object v2, p0, Ltd;->B:Lcom/bumptech/glide/load/a;

    .line 7
    instance-of v3, v1, Lde;

    if-eqz v3, :cond_1

    .line 8
    move-object v3, v1

    check-cast v3, Lde;

    invoke-interface {v3}, Lde;->initialize()V

    .line 9
    :cond_1
    iget-object v3, p0, Ltd;->g:Ltd$c;

    invoke-virtual {v3}, Ltd$c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v1}, Lge;->e(Lhe;)Lge;

    move-result-object v0

    move-object v1, v0

    .line 11
    :cond_2
    invoke-direct {p0}, Ltd;->s()V

    .line 12
    iget-object v3, p0, Ltd;->q:Ltd$a;

    check-cast v3, Lxd;

    invoke-virtual {v3, v1, v2}, Lxd;->h(Lhe;Lcom/bumptech/glide/load/a;)V

    .line 13
    sget-object v1, Ltd$g;->f:Ltd$g;

    iput-object v1, p0, Ltd;->s:Ltd$g;

    .line 14
    :try_start_1
    iget-object v1, p0, Ltd;->g:Ltd$c;

    invoke-virtual {v1}, Ltd$c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Ltd;->g:Ltd$c;

    iget-object v2, p0, Ltd;->e:Ltd$d;

    iget-object v3, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, v2, v3}, Ltd$c;->b(Ltd$d;Lcom/bumptech/glide/load/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lge;->f()V

    .line 17
    :cond_4
    iget-object v0, p0, Ltd;->h:Ltd$e;

    invoke-virtual {v0}, Ltd$e;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-direct {p0}, Ltd;->p()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Lge;->f()V

    :cond_5
    throw v1

    .line 20
    :cond_6
    invoke-direct {p0}, Ltd;->q()V

    :cond_7
    :goto_1
    return-void
.end method

.method private i()Lrd;
    .locals 3

    .line 1
    iget-object v0, p0, Ltd;->s:Ltd$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized stage: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltd;->s:Ltd$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lme;

    iget-object v1, p0, Ltd;->b:Lsd;

    invoke-direct {v0, v1, p0}, Lme;-><init>(Lsd;Lrd$a;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Lod;

    iget-object v1, p0, Ltd;->b:Lsd;

    invoke-direct {v0, v1, p0}, Lod;-><init>(Lsd;Lrd$a;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Lie;

    iget-object v1, p0, Ltd;->b:Lsd;

    invoke-direct {v0, v1, p0}, Lie;-><init>(Lsd;Lrd$a;)V

    return-object v0
.end method

.method private j(Ltd$g;)Ltd$g;
    .locals 4

    .line 1
    sget-object v0, Ltd$g;->c:Ltd$g;

    sget-object v1, Ltd$g;->d:Ltd$g;

    sget-object v2, Ltd$g;->g:Ltd$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v2

    .line 3
    :cond_2
    iget-boolean p1, p0, Ltd;->v:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Ltd$g;->e:Ltd$g;

    :goto_1
    return-object v2

    .line 4
    :cond_4
    iget-object p1, p0, Ltd;->o:Lvd;

    invoke-virtual {p1}, Lvd;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    invoke-direct {p0, v1}, Ltd;->j(Ltd$g;)Ltd$g;

    move-result-object v1

    :goto_2
    return-object v1

    .line 6
    :cond_6
    iget-object p1, p0, Ltd;->o:Lvd;

    invoke-virtual {p1}, Lvd;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 7
    :cond_7
    invoke-direct {p0, v0}, Ltd;->j(Ltd$g;)Ltd$g;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private l(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p1, v0}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2, p3}, Ldl;->a(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ltd;->l:Lzd;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, ", "

    .line 3
    invoke-static {p2, p4}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ltd;->s()V

    .line 2
    new-instance v0, Lce;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltd;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lce;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Ltd;->q:Ltd$a;

    check-cast v1, Lxd;

    invoke-virtual {v1, v0}, Lxd;->g(Lce;)V

    .line 4
    iget-object v0, p0, Ltd;->h:Ltd$e;

    invoke-virtual {v0}, Ltd$e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Ltd;->p()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltd;->h:Ltd$e;

    invoke-virtual {v0}, Ltd$e;->e()V

    .line 2
    iget-object v0, p0, Ltd;->g:Ltd$c;

    invoke-virtual {v0}, Ltd$c;->a()V

    .line 3
    iget-object v0, p0, Ltd;->b:Lsd;

    invoke-virtual {v0}, Lsd;->a()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ltd;->E:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ltd;->i:Lcom/bumptech/glide/e;

    .line 6
    iput-object v1, p0, Ltd;->j:Lcom/bumptech/glide/load/g;

    .line 7
    iput-object v1, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    .line 8
    iput-object v1, p0, Ltd;->k:Lcom/bumptech/glide/f;

    .line 9
    iput-object v1, p0, Ltd;->l:Lzd;

    .line 10
    iput-object v1, p0, Ltd;->q:Ltd$a;

    .line 11
    iput-object v1, p0, Ltd;->s:Ltd$g;

    .line 12
    iput-object v1, p0, Ltd;->D:Lrd;

    .line 13
    iput-object v1, p0, Ltd;->x:Ljava/lang/Thread;

    .line 14
    iput-object v1, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    .line 15
    iput-object v1, p0, Ltd;->A:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Ltd;->B:Lcom/bumptech/glide/load/a;

    .line 17
    iput-object v1, p0, Ltd;->C:Luc;

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Ltd;->u:J

    .line 19
    iput-boolean v0, p0, Ltd;->F:Z

    .line 20
    iput-object v1, p0, Ltd;->w:Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, Ltd;->f:Lk2;

    invoke-interface {v0, p0}, Lk2;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ltd;->x:Ljava/lang/Thread;

    .line 2
    sget v0, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Ltd;->u:J

    const/4 v0, 0x0

    .line 4
    :cond_0
    iget-boolean v1, p0, Ltd;->F:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ltd;->D:Lrd;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ltd;->D:Lrd;

    .line 5
    invoke-interface {v0}, Lrd;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v1, p0, Ltd;->s:Ltd$g;

    invoke-direct {p0, v1}, Ltd;->j(Ltd$g;)Ltd$g;

    move-result-object v1

    iput-object v1, p0, Ltd;->s:Ltd$g;

    .line 7
    invoke-direct {p0}, Ltd;->i()Lrd;

    move-result-object v1

    iput-object v1, p0, Ltd;->D:Lrd;

    .line 8
    iget-object v1, p0, Ltd;->s:Ltd$g;

    sget-object v2, Ltd$g;->e:Ltd$g;

    if-ne v1, v2, :cond_0

    .line 9
    sget-object v0, Ltd$f;->c:Ltd$f;

    iput-object v0, p0, Ltd;->t:Ltd$f;

    .line 10
    iget-object v0, p0, Ltd;->q:Ltd$a;

    check-cast v0, Lxd;

    invoke-virtual {v0, p0}, Lxd;->l(Ltd;)V

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Ltd;->s:Ltd$g;

    sget-object v2, Ltd$g;->g:Ltd$g;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Ltd;->F:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 12
    invoke-direct {p0}, Ltd;->m()V

    :cond_3
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltd;->t:Ltd$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Ltd;->h()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized run reason: "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltd;->t:Ltd$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, Ltd;->q()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Ltd$g;->b:Ltd$g;

    invoke-direct {p0, v0}, Ltd;->j(Ltd$g;)Ltd$g;

    move-result-object v0

    iput-object v0, p0, Ltd;->s:Ltd$g;

    .line 6
    invoke-direct {p0}, Ltd;->i()Lrd;

    move-result-object v0

    iput-object v0, p0, Ltd;->D:Lrd;

    .line 7
    invoke-direct {p0}, Ltd;->q()V

    :goto_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltd;->d:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-boolean v0, p0, Ltd;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_1
    iput-boolean v1, p0, Ltd;->E:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Luc<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Luc;->b()V

    .line 2
    new-instance v0, Lce;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lce;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Luc;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lce;->h(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    .line 4
    iget-object p1, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Ltd;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 6
    sget-object p1, Ltd$f;->c:Ltd$f;

    iput-object p1, p0, Ltd;->t:Ltd$f;

    .line 7
    iget-object p1, p0, Ltd;->q:Ltd$a;

    check-cast p1, Lxd;

    invoke-virtual {p1, p0}, Lxd;->l(Ltd;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Ltd;->q()V

    :goto_0
    return-void
.end method

.method public b()Lll;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->d:Lll;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Ltd$f;->c:Ltd$f;

    iput-object v0, p0, Ltd;->t:Ltd$f;

    .line 2
    iget-object v0, p0, Ltd;->q:Ltd$a;

    check-cast v0, Lxd;

    invoke-virtual {v0, p0}, Lxd;->l(Ltd;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ltd;

    .line 2
    iget-object v0, p0, Ltd;->k:Lcom/bumptech/glide/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, Ltd;->k:Lcom/bumptech/glide/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Ltd;->r:I

    iget p1, p1, Ltd;->r:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Luc<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    .line 2
    iput-object p2, p0, Ltd;->A:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Ltd;->C:Luc;

    .line 4
    iput-object p4, p0, Ltd;->B:Lcom/bumptech/glide/load/a;

    .line 5
    iput-object p5, p0, Ltd;->z:Lcom/bumptech/glide/load/g;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Ltd;->x:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, Ltd$f;->d:Ltd$f;

    iput-object p1, p0, Ltd;->t:Ltd$f;

    .line 8
    iget-object p1, p0, Ltd;->q:Ltd$a;

    check-cast p1, Lxd;

    invoke-virtual {p1, p0}, Lxd;->l(Ltd;)V

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ltd;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ltd;->F:Z

    .line 2
    iget-object v0, p0, Ltd;->D:Lrd;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lrd;->cancel()V

    :cond_0
    return-void
.end method

.method k(Lcom/bumptech/glide/e;Ljava/lang/Object;Lzd;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Ltd$a;I)Ltd;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lzd;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lvd;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Ltd$a<",
            "TR;>;I)",
            "Ltd<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ltd;->b:Lsd;

    iget-object v15, v0, Ltd;->e:Ltd$d;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lsd;->u(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILvd;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLtd$d;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Ltd;->i:Lcom/bumptech/glide/e;

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v0, Ltd;->j:Lcom/bumptech/glide/load/g;

    move-object/from16 v1, p9

    .line 4
    iput-object v1, v0, Ltd;->k:Lcom/bumptech/glide/f;

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Ltd;->l:Lzd;

    move/from16 v1, p5

    .line 6
    iput v1, v0, Ltd;->m:I

    move/from16 v1, p6

    .line 7
    iput v1, v0, Ltd;->n:I

    move-object/from16 v1, p10

    .line 8
    iput-object v1, v0, Ltd;->o:Lvd;

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, Ltd;->v:Z

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, Ltd;->p:Lcom/bumptech/glide/load/i;

    move-object/from16 v1, p16

    .line 11
    iput-object v1, v0, Ltd;->q:Ltd$a;

    move/from16 v1, p17

    .line 12
    iput v1, v0, Ltd;->r:I

    .line 13
    sget-object v1, Ltd$f;->b:Ltd$f;

    iput-object v1, v0, Ltd;->t:Ltd$f;

    move-object/from16 v1, p2

    .line 14
    iput-object v1, v0, Ltd;->w:Ljava/lang/Object;

    return-object v0
.end method

.method n(Lcom/bumptech/glide/load/a;Lhe;)Lhe;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a;",
            "Lhe<",
            "TZ;>;)",
            "Lhe<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lhe;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2
    sget-object v0, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Ltd;->b:Lsd;

    invoke-virtual {v0, v8}, Lsd;->r(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    move-result-object v0

    .line 4
    iget-object v2, p0, Ltd;->i:Lcom/bumptech/glide/e;

    iget v3, p0, Ltd;->m:I

    iget v4, p0, Ltd;->n:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/m;->b(Landroid/content/Context;Lhe;II)Lhe;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    .line 5
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p2}, Lhe;->a()V

    .line 7
    :cond_1
    iget-object p2, p0, Ltd;->b:Lsd;

    invoke-virtual {p2, v0}, Lsd;->v(Lhe;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Ltd;->b:Lsd;

    invoke-virtual {p2, v0}, Lsd;->n(Lhe;)Lcom/bumptech/glide/load/l;

    move-result-object v1

    .line 9
    iget-object p2, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/l;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/c;->d:Lcom/bumptech/glide/load/c;

    :goto_1
    move-object v10, v1

    .line 11
    iget-object v1, p0, Ltd;->b:Lsd;

    iget-object v2, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    .line 12
    invoke-virtual {v1}, Lsd;->g()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v3, :cond_4

    .line 14
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzf$a;

    .line 15
    iget-object v9, v9, Lzf$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v9, v2}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    xor-int/lit8 v1, v4, 0x1

    .line 16
    iget-object v2, p0, Ltd;->o:Lvd;

    invoke-virtual {v2, v1, p1, p2}, Lvd;->d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v10, :cond_7

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-ne p1, v6, :cond_5

    .line 18
    new-instance p1, Lje;

    iget-object p2, p0, Ltd;->b:Lsd;

    .line 19
    invoke-virtual {p2}, Lsd;->b()Loe;

    move-result-object v2

    iget-object v3, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    iget-object v4, p0, Ltd;->j:Lcom/bumptech/glide/load/g;

    iget v5, p0, Ltd;->m:I

    iget v6, p0, Ltd;->n:I

    iget-object v9, p0, Ltd;->p:Lcom/bumptech/glide/load/i;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lje;-><init>(Loe;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    goto :goto_4

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    new-instance p1, Lpd;

    iget-object p2, p0, Ltd;->y:Lcom/bumptech/glide/load/g;

    iget-object v1, p0, Ltd;->j:Lcom/bumptech/glide/load/g;

    invoke-direct {p1, p2, v1}, Lpd;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    .line 22
    :goto_4
    invoke-static {v0}, Lge;->e(Lhe;)Lge;

    move-result-object v0

    .line 23
    iget-object p2, p0, Ltd;->g:Ltd$c;

    invoke-virtual {p2, p1, v10, v0}, Ltd$c;->d(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/l;Lge;)V

    goto :goto_5

    .line 24
    :cond_7
    new-instance p1, Lcom/bumptech/glide/g$d;

    invoke-interface {v0}, Lhe;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/g$d;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_8
    :goto_5
    return-object v0
.end method

.method o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->h:Ltd$e;

    invoke-virtual {v0, p1}, Ltd$e;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Ltd;->p()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltd;->C:Luc;

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ltd;->F:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0}, Ltd;->m()V
    :try_end_0
    .catch Lnd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Luc;->b()V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ltd;->r()V
    :try_end_1
    .catch Lnd; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Luc;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Ltd;->F:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltd;->s:Ltd$g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v2, p0, Ltd;->s:Ltd$g;

    sget-object v3, Ltd$g;->f:Ltd$g;

    if-eq v2, v3, :cond_4

    .line 10
    iget-object v2, p0, Ltd;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Ltd;->m()V

    .line 12
    :cond_4
    iget-boolean v2, p0, Ltd;->F:Z

    if-nez v2, :cond_5

    .line 13
    throw v1

    .line 14
    :cond_5
    throw v1

    :catch_0
    move-exception v1

    .line 15
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Luc;->b()V

    .line 17
    :cond_6
    throw v1
.end method

.method t()Z
    .locals 2

    .line 1
    sget-object v0, Ltd$g;->b:Ltd$g;

    invoke-direct {p0, v0}, Ltd;->j(Ltd$g;)Ltd$g;

    move-result-object v0

    .line 2
    sget-object v1, Ltd$g;->c:Ltd$g;

    if-eq v0, v1, :cond_1

    sget-object v1, Ltd$g;->d:Ltd$g;

    if-ne v0, v1, :cond_0

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
