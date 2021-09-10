.class Lme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd;
.implements Lrd$a;


# instance fields
.field private final b:Lsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lrd$a;

.field private d:I

.field private e:Lod;

.field private f:Ljava/lang/Object;

.field private volatile g:Lzf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzf$a<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Lpd;


# direct methods
.method constructor <init>(Lsd;Lrd$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsd<",
            "*>;",
            "Lrd$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lme;->b:Lsd;

    .line 3
    iput-object p2, p0, Lme;->c:Lrd$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V
    .locals 1
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
    iget-object p4, p0, Lme;->c:Lrd$a;

    iget-object v0, p0, Lme;->g:Lzf$a;

    iget-object v0, v0, Lzf$a;->c:Luc;

    invoke-interface {v0}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lrd$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public b()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lme;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, p0, Lme;->f:Ljava/lang/Object;

    .line 3
    sget v2, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 4
    :try_start_0
    iget-object v4, p0, Lme;->b:Lsd;

    invoke-virtual {v4, v0}, Lsd;->p(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    move-result-object v4

    .line 5
    new-instance v5, Lqd;

    iget-object v6, p0, Lme;->b:Lsd;

    .line 6
    invoke-virtual {v6}, Lsd;->k()Lcom/bumptech/glide/load/i;

    move-result-object v6

    invoke-direct {v5, v4, v0, v6}, Lqd;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V

    .line 7
    new-instance v6, Lpd;

    iget-object v7, p0, Lme;->g:Lzf$a;

    iget-object v7, v7, Lzf$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v8, p0, Lme;->b:Lsd;

    invoke-virtual {v8}, Lsd;->o()Lcom/bumptech/glide/load/g;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lpd;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iput-object v6, p0, Lme;->h:Lpd;

    .line 8
    iget-object v6, p0, Lme;->b:Lsd;

    invoke-virtual {v6}, Lsd;->d()Laf;

    move-result-object v6

    iget-object v7, p0, Lme;->h:Lpd;

    invoke-interface {v6, v7, v5}, Laf;->a(Lcom/bumptech/glide/load/g;Laf$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    .line 9
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished encoding source to cache, key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lme;->h:Lpd;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v2, v3}, Ldl;->a(J)D

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    iget-object v0, p0, Lme;->g:Lzf$a;

    iget-object v0, v0, Lzf$a;->c:Luc;

    invoke-interface {v0}, Luc;->b()V

    .line 13
    new-instance v0, Lod;

    iget-object v2, p0, Lme;->g:Lzf$a;

    iget-object v2, v2, Lzf$a;->a:Lcom/bumptech/glide/load/g;

    .line 14
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lme;->b:Lsd;

    invoke-direct {v0, v2, v3, p0}, Lod;-><init>(Ljava/util/List;Lsd;Lrd$a;)V

    iput-object v0, p0, Lme;->e:Lod;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lme;->g:Lzf$a;

    iget-object v1, v1, Lzf$a;->c:Luc;

    invoke-interface {v1}, Luc;->b()V

    throw v0

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lme;->e:Lod;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lod;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 17
    :cond_2
    iput-object v1, p0, Lme;->e:Lod;

    .line 18
    iput-object v1, p0, Lme;->g:Lzf$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 19
    iget v3, p0, Lme;->d:I

    iget-object v4, p0, Lme;->b:Lsd;

    invoke-virtual {v4}, Lsd;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 20
    iget-object v3, p0, Lme;->b:Lsd;

    invoke-virtual {v3}, Lsd;->g()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lme;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lme;->d:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzf$a;

    iput-object v3, p0, Lme;->g:Lzf$a;

    .line 21
    iget-object v3, p0, Lme;->g:Lzf$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lme;->b:Lsd;

    .line 22
    invoke-virtual {v3}, Lsd;->e()Lvd;

    move-result-object v3

    iget-object v4, p0, Lme;->g:Lzf$a;

    iget-object v4, v4, Lzf$a;->c:Luc;

    invoke-interface {v4}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvd;->c(Lcom/bumptech/glide/load/a;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lme;->b:Lsd;

    iget-object v4, p0, Lme;->g:Lzf$a;

    iget-object v4, v4, Lzf$a;->c:Luc;

    .line 23
    invoke-interface {v4}, Luc;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsd;->t(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 24
    :cond_5
    iget-object v1, p0, Lme;->g:Lzf$a;

    .line 25
    iget-object v3, p0, Lme;->g:Lzf$a;

    iget-object v3, v3, Lzf$a;->c:Luc;

    iget-object v4, p0, Lme;->b:Lsd;

    .line 26
    invoke-virtual {v4}, Lsd;->l()Lcom/bumptech/glide/f;

    move-result-object v4

    new-instance v5, Lle;

    invoke-direct {v5, p0, v1}, Lle;-><init>(Lme;Lzf$a;)V

    .line 27
    invoke-interface {v3, v4, v5}, Luc;->e(Lcom/bumptech/glide/f;Luc$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme;->g:Lzf$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lzf$a;->c:Luc;

    invoke-interface {v0}, Luc;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .locals 6
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
    iget-object v0, p0, Lme;->c:Lrd$a;

    iget-object p4, p0, Lme;->g:Lzf$a;

    iget-object p4, p4, Lzf$a;->c:Luc;

    invoke-interface {p4}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lrd$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method e(Lzf$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzf$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme;->g:Lzf$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method f(Lzf$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzf$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme;->b:Lsd;

    invoke-virtual {v0}, Lsd;->e()Lvd;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p1, Lzf$a;->c:Luc;

    invoke-interface {v1}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvd;->c(Lcom/bumptech/glide/load/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lme;->f:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lme;->c:Lrd$a;

    invoke-interface {p1}, Lrd$a;->c()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lme;->c:Lrd$a;

    iget-object v1, p1, Lzf$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v3, p1, Lzf$a;->c:Luc;

    .line 6
    invoke-interface {v3}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    iget-object v5, p0, Lme;->h:Lpd;

    move-object v2, p2

    .line 7
    invoke-interface/range {v0 .. v5}, Lrd$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    :goto_0
    return-void
.end method

.method g(Lzf$a;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzf$a<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme;->c:Lrd$a;

    iget-object v1, p0, Lme;->h:Lpd;

    iget-object p1, p1, Lzf$a;->c:Luc;

    invoke-interface {p1}, Luc;->d()Lcom/bumptech/glide/load/a;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lrd$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V

    return-void
.end method
