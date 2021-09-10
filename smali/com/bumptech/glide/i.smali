.class public Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lgj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/i$b;,
        Lcom/bumptech/glide/i$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lgj;",
        "Ljava/lang/Object<",
        "Lcom/bumptech/glide/h<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final m:Lck;


# instance fields
.field protected final b:Lcom/bumptech/glide/c;

.field protected final c:Landroid/content/Context;

.field final d:Lfj;

.field private final e:Llj;

.field private final f:Lkj;

.field private final g:Lnj;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/os/Handler;

.field private final j:Laj;

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lbk<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Lck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lck;

    invoke-direct {v1}, Lck;-><init>()V

    invoke-virtual {v1, v0}, Lyj;->e(Ljava/lang/Class;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    .line 3
    invoke-virtual {v0}, Lyj;->H()Lyj;

    move-result-object v0

    check-cast v0, Lck;

    sput-object v0, Lcom/bumptech/glide/i;->m:Lck;

    .line 4
    const-class v0, Lji;

    .line 5
    new-instance v1, Lck;

    invoke-direct {v1}, Lck;-><init>()V

    invoke-virtual {v1, v0}, Lyj;->e(Ljava/lang/Class;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    .line 6
    invoke-virtual {v0}, Lyj;->H()Lyj;

    move-result-object v0

    check-cast v0, Lck;

    .line 7
    sget-object v0, Lvd;->c:Lvd;

    .line 8
    new-instance v1, Lck;

    invoke-direct {v1}, Lck;-><init>()V

    invoke-virtual {v1, v0}, Lyj;->f(Lvd;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    .line 9
    sget-object v1, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/f;

    invoke-virtual {v0, v1}, Lyj;->O(Lcom/bumptech/glide/f;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyj;->S(Z)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Llj;

    invoke-direct {v0}, Llj;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->f()Lbj;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v2, Lnj;

    invoke-direct {v2}, Lnj;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/i;->g:Lnj;

    .line 5
    new-instance v2, Lcom/bumptech/glide/i$a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/i$a;-><init>(Lcom/bumptech/glide/i;)V

    iput-object v2, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Runnable;

    .line 6
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/bumptech/glide/i;->i:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/i;->d:Lfj;

    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/i;->f:Lkj;

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/i;->e:Llj;

    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/i;->c:Landroid/content/Context;

    .line 12
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/i$c;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/i$c;-><init>(Lcom/bumptech/glide/i;Llj;)V

    .line 13
    check-cast v1, Ldj;

    invoke-virtual {v1, p3, p4}, Ldj;->a(Landroid/content/Context;Laj$a;)Laj;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/i;->j:Laj;

    .line 14
    invoke-static {}, Lhl;->g()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 15
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p2, p0}, Lfj;->a(Lgj;)V

    .line 17
    :goto_0
    invoke-interface {p2, p3}, Lfj;->a(Lgj;)V

    .line 18
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/e;->c()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/i;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/e;->d()Lck;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/i;->p(Lck;)V

    .line 21
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->l(Lcom/bumptech/glide/i;)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/h<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/i;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/i;->m:Lck;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/i$b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/i$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->m(Lnk;)V

    return-void
.end method

.method public m(Lnk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->r(Lnk;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lnk;->f()Lzj;

    move-result-object v1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->m(Lnk;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lnk;->c(Lzj;)V

    .line 5
    invoke-interface {v1}, Lzj;->clear()V

    :cond_1
    return-void
.end method

.method n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbk<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/i;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method declared-synchronized o()Lck;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->l:Lck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0}, Lnj;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0}, Lnj;->j()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnk;

    .line 3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/i;->m(Lnk;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0}, Lnj;->i()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {v0}, Llj;->b()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lfj;

    invoke-interface {v0, p0}, Lfj;->b(Lgj;)V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lfj;

    iget-object v1, p0, Lcom/bumptech/glide/i;->j:Laj;

    invoke-interface {v0, v1}, Lfj;->b(Lgj;)V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/i;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/c;->o(Lcom/bumptech/glide/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {v0}, Llj;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0}, Lnj;->onStart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {v0}, Llj;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    monitor-exit p0

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0}, Lnj;->onStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    return-void
.end method

.method protected declared-synchronized p(Lck;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lyj;->d()Lyj;

    move-result-object p1

    check-cast p1, Lck;

    invoke-virtual {p1}, Lyj;->b()Lyj;

    move-result-object p1

    check-cast p1, Lck;

    iput-object p1, p0, Lcom/bumptech/glide/i;->l:Lck;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized q(Lnk;Lzj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk<",
            "*>;",
            "Lzj;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0, p1}, Lnj;->k(Lnk;)V

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {p1, p2}, Llj;->f(Lzj;)V
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

.method declared-synchronized r(Lnk;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lnk;->f()Lzj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {v2, v0}, Llj;->a(Lzj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lnj;

    invoke-virtual {v0, p1}, Lnj;->l(Lnk;)V

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Lnk;->c(Lzj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/i;->e:Llj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/i;->f:Lkj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
