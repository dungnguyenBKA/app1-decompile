.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# instance fields
.field private volatile l:Ld6;

.field private volatile m:Lu5;

.field private volatile n:Lg6;

.field private volatile o:Lx5;

.field private volatile p:La6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic A(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic C(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic x(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/g;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Landroidx/work/impl/WorkDatabase_Impl;Lh4;)Lh4;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/g;->a:Lh4;

    return-object p1
.end method

.method static synthetic z(Landroidx/work/impl/WorkDatabase_Impl;Lh4;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/g;->m(Lh4;)V

    return-void
.end method


# virtual methods
.method protected e()Landroidx/room/e;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/e;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/e;-><init>(Landroidx/room/g;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected f(Landroidx/room/a;)Li4;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/h;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c84d23ade98552f1cec71088c1f0794c"

    const-string v3, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/h;-><init>(Landroidx/room/a;Landroidx/room/h$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Li4$b;->a(Landroid/content/Context;)Li4$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Li4$b$a;->c(Ljava/lang/String;)Li4$b$a;

    .line 4
    invoke-virtual {v1, v0}, Li4$b$a;->b(Li4$a;)Li4$b$a;

    .line 5
    invoke-virtual {v1}, Li4$b$a;->a()Li4$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/a;->a:Li4$c;

    check-cast p1, Lo4;

    invoke-virtual {p1, v0}, Lo4;->a(Li4$b;)Li4;

    move-result-object p1

    return-object p1
.end method

.method public p()Lu5;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lu5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lu5;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lu5;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lv5;

    invoke-direct {v0, p0}, Lv5;-><init>(Landroidx/room/g;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lu5;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lu5;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Lx5;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lx5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lx5;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lx5;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ly5;

    invoke-direct {v0, p0}, Ly5;-><init>(Landroidx/room/g;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lx5;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lx5;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()La6;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:La6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:La6;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:La6;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb6;

    invoke-direct {v0, p0}, Lb6;-><init>(Landroidx/room/g;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:La6;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:La6;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Ld6;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Ld6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Ld6;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Ld6;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le6;

    invoke-direct {v0, p0}, Le6;-><init>(Landroidx/room/g;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Ld6;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->l:Ld6;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Lg6;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lg6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lg6;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lg6;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lh6;

    invoke-direct {v0, p0}, Lh6;-><init>(Landroidx/room/g;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lg6;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lg6;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
