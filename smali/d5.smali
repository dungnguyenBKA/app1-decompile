.class public Ld5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5$a;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lc5;

.field private final b:[Lg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lg5<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkConstraintsTracker"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld5;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm6;Lc5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iput-object p3, p0, Ld5;->a:Lc5;

    const/4 p3, 0x7

    new-array p3, p3, [Lg5;

    .line 4
    new-instance v0, Le5;

    invoke-direct {v0, p1, p2}, Le5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    new-instance v0, Lf5;

    invoke-direct {v0, p1, p2}, Lf5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x1

    aput-object v0, p3, v1

    new-instance v0, Ll5;

    invoke-direct {v0, p1, p2}, Ll5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x2

    aput-object v0, p3, v1

    new-instance v0, Lh5;

    invoke-direct {v0, p1, p2}, Lh5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x3

    aput-object v0, p3, v1

    new-instance v0, Lk5;

    invoke-direct {v0, p1, p2}, Lk5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x4

    aput-object v0, p3, v1

    new-instance v0, Lj5;

    invoke-direct {v0, p1, p2}, Lj5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 v1, 0x5

    aput-object v0, p3, v1

    new-instance v0, Li5;

    invoke-direct {v0, p1, p2}, Li5;-><init>(Landroid/content/Context;Lm6;)V

    const/4 p1, 0x6

    aput-object v0, p3, p1

    iput-object p3, p0, Ld5;->b:[Lg5;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ld5;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld5;->b:[Lg5;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-virtual {v6, p1}, Lg5;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v1

    sget-object v2, Ld5;->d:Ljava/lang/String;

    const-string v4, "Work %s constrained by %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    .line 6
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v4}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    monitor-exit v0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Ld5;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v3

    sget-object v4, Ld5;->d:Ljava/lang/String;

    const-string v5, "Constraints met for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Ld5;->a:Lc5;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v1}, Lc5;->d(Ljava/util/List;)V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld5;->a:Lc5;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lc5;->b(Ljava/util/List;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld5;->b:[Lg5;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v5, v6}, Lg5;->g(Lg5$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ld5;->b:[Lg5;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5, p1}, Lg5;->e(Ljava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Ld5;->b:[Lg5;

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v2, p1, v3

    .line 7
    invoke-virtual {v2, p0}, Lg5;->g(Lg5$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld5;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld5;->b:[Lg5;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lg5;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
