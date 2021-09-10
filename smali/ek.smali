.class public final Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj;
.implements Lmk;
.implements Ldk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lek$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzj;",
        "Lmk;",
        "Ldk;"
    }
.end annotation


# static fields
.field private static final D:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/lang/RuntimeException;

.field private final a:Ljava/lang/String;

.field private final b:Lll;

.field private final c:Ljava/lang/Object;

.field private final d:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final e:Lak;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/bumptech/glide/e;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final j:Lyj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyj<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:I

.field private final m:Lcom/bumptech/glide/f;

.field private final n:Lnk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbk<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final p:Ltk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltk<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/Executor;

.field private r:Lhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe<",
            "TR;>;"
        }
    .end annotation
.end field

.field private s:Lwd$d;

.field private t:J

.field private volatile u:Lwd;

.field private v:Lek$a;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lek;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lyj;IILcom/bumptech/glide/f;Lnk;Lbk;Ljava/util/List;Lak;Lwd;Ltk;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lyj<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lnk<",
            "TR;>;",
            "Lbk<",
            "TR;>;",
            "Ljava/util/List<",
            "Lbk<",
            "TR;>;>;",
            "Lak;",
            "Lwd;",
            "Ltk<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v1, Lek;->D:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lek;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lll;->a()Lll;

    move-result-object v1

    iput-object v1, v0, Lek;->b:Lll;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lek;->c:Ljava/lang/Object;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lek;->f:Landroid/content/Context;

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lek;->g:Lcom/bumptech/glide/e;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lek;->h:Ljava/lang/Object;

    move-object v2, p5

    .line 8
    iput-object v2, v0, Lek;->i:Ljava/lang/Class;

    move-object v2, p6

    .line 9
    iput-object v2, v0, Lek;->j:Lyj;

    move v2, p7

    .line 10
    iput v2, v0, Lek;->k:I

    move v2, p8

    .line 11
    iput v2, v0, Lek;->l:I

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lek;->m:Lcom/bumptech/glide/f;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lek;->n:Lnk;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lek;->d:Lbk;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lek;->o:Ljava/util/List;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lek;->e:Lak;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lek;->u:Lwd;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lek;->p:Ltk;

    move-object/from16 v2, p16

    .line 19
    iput-object v2, v0, Lek;->q:Ljava/util/concurrent/Executor;

    .line 20
    sget-object v2, Lek$a;->b:Lek$a;

    iput-object v2, v0, Lek;->v:Lek$a;

    .line 21
    iget-object v2, v0, Lek;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/bumptech/glide/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lek;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lek;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lek;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lek;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->y:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lek;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lek;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->s()I

    move-result v0

    invoke-direct {p0, v0}, Lek;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->x:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lek;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lek;->e:Lak;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lak;->getRoot()Lak;

    move-result-object v0

    invoke-interface {v0}, Lak;->b()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private j(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->x()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->x()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lek;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 2
    :goto_0
    iget-object v1, p0, Lek;->g:Lcom/bumptech/glide/e;

    invoke-static {v1, p1, v0}, Lzh;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public static k(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lyj;IILcom/bumptech/glide/f;Lnk;Lbk;Ljava/util/List;Lak;Lwd;Ltk;Ljava/util/concurrent/Executor;)Lek;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lyj<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lnk<",
            "TR;>;",
            "Lbk<",
            "TR;>;",
            "Ljava/util/List<",
            "Lbk<",
            "TR;>;>;",
            "Lak;",
            "Lwd;",
            "Ltk<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lek<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    new-instance v17, Lek;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lek;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lyj;IILcom/bumptech/glide/f;Lnk;Lbk;Ljava/util/List;Lak;Lwd;Ltk;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private m(Lce;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lek;->b:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lek;->g:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/e;->g()I

    move-result v1

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lek;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lek;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lek;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 6
    invoke-virtual {p1, p2}, Lce;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lek;->s:Lwd$d;

    .line 8
    sget-object p2, Lek$a;->f:Lek$a;

    iput-object p2, p0, Lek;->v:Lek$a;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lek;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 10
    :try_start_1
    iget-object v2, p0, Lek;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbk;

    .line 12
    iget-object v5, p0, Lek;->h:Ljava/lang/Object;

    iget-object v6, p0, Lek;->n:Lnk;

    .line 13
    invoke-direct {p0}, Lek;->i()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lbk;->a(Lce;Ljava/lang/Object;Lnk;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 14
    :cond_2
    iget-object v2, p0, Lek;->d:Lbk;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lek;->h:Ljava/lang/Object;

    iget-object v5, p0, Lek;->n:Lnk;

    .line 15
    invoke-direct {p0}, Lek;->i()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lbk;->a(Lce;Ljava/lang/Object;Lnk;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    or-int p1, v3, p2

    if-nez p1, :cond_4

    .line 16
    invoke-direct {p0}, Lek;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lek;->B:Z

    .line 18
    iget-object p1, p0, Lek;->e:Lak;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1, p0}, Lak;->a(Lzj;)V

    .line 20
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    iput-boolean v1, p0, Lek;->B:Z

    throw p1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2
.end method

.method private o(Lhe;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lek;->i()Z

    move-result v6

    .line 2
    sget-object v0, Lek$a;->e:Lek$a;

    iput-object v0, p0, Lek;->v:Lek$a;

    .line 3
    iput-object p1, p0, Lek;->r:Lhe;

    .line 4
    iget-object p1, p0, Lek;->g:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->g()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 5
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lek;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lek;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lek;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lek;->t:J

    .line 7
    invoke-static {v0, v1}, Ldl;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lek;->B:Z

    const/4 v7, 0x0

    .line 9
    :try_start_0
    iget-object v0, p0, Lek;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk;

    .line 11
    iget-object v2, p0, Lek;->h:Ljava/lang/Object;

    iget-object v3, p0, Lek;->n:Lnk;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 12
    invoke-interface/range {v0 .. v5}, Lbk;->b(Ljava/lang/Object;Ljava/lang/Object;Lnk;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 13
    :cond_2
    iget-object v0, p0, Lek;->d:Lbk;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lek;->h:Ljava/lang/Object;

    iget-object v3, p0, Lek;->n:Lnk;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 14
    invoke-interface/range {v0 .. v5}, Lbk;->b(Ljava/lang/Object;Ljava/lang/Object;Lnk;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lek;->p:Ltk;

    invoke-interface {p1, p3, v6}, Ltk;->a(Lcom/bumptech/glide/load/a;Z)Lsk;

    move-result-object p1

    .line 16
    iget-object p3, p0, Lek;->n:Lnk;

    invoke-interface {p3, p2, p1}, Lnk;->b(Ljava/lang/Object;Lsk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_4
    iput-boolean v7, p0, Lek;->B:Z

    .line 18
    iget-object p1, p0, Lek;->e:Lak;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1, p0}, Lak;->e(Lzj;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 20
    iput-boolean v7, p0, Lek;->B:Z

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->e:Lak;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lak;->c(Lzj;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lek;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 3
    invoke-direct {p0}, Lek;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lek;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->i()I

    move-result v0

    if-lez v0, :cond_4

    .line 7
    iget-object v0, p0, Lek;->j:Lyj;

    invoke-virtual {v0}, Lyj;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lek;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lek;->w:Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_4
    iget-object v0, p0, Lek;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 9
    invoke-direct {p0}, Lek;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    :cond_6
    iget-object v1, p0, Lek;->n:Lnk;

    invoke-interface {v1, v0}, Lnk;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 26

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget-object v2, v15, Lek;->b:Lll;

    invoke-virtual {v2}, Lll;->c()V

    .line 2
    iget-object v14, v15, Lek;->c:Ljava/lang/Object;

    monitor-enter v14

    .line 3
    :try_start_0
    sget-boolean v21, Lek;->D:Z

    if-eqz v21, :cond_0

    .line 4
    iget-wide v2, v15, Lek;->t:J

    invoke-static {v2, v3}, Ldl;->a(J)D

    .line 5
    :cond_0
    iget-object v2, v15, Lek;->v:Lek$a;

    sget-object v3, Lek$a;->d:Lek$a;

    if-eq v2, v3, :cond_1

    .line 6
    monitor-exit v14

    return-void

    .line 7
    :cond_1
    sget-object v13, Lek$a;->c:Lek$a;

    iput-object v13, v15, Lek;->v:Lek$a;

    .line 8
    iget-object v2, v15, Lek;->j:Lyj;

    invoke-virtual {v2}, Lyj;->w()F

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 10
    :goto_0
    iput v0, v15, Lek;->z:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v2, v2, v0

    .line 11
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 12
    :goto_1
    iput v0, v15, Lek;->A:I

    if-eqz v21, :cond_4

    .line 13
    iget-wide v0, v15, Lek;->t:J

    invoke-static {v0, v1}, Ldl;->a(J)D

    .line 14
    :cond_4
    iget-object v1, v15, Lek;->u:Lwd;

    iget-object v2, v15, Lek;->g:Lcom/bumptech/glide/e;

    iget-object v3, v15, Lek;->h:Ljava/lang/Object;

    iget-object v0, v15, Lek;->j:Lyj;

    .line 15
    invoke-virtual {v0}, Lyj;->v()Lcom/bumptech/glide/load/g;

    move-result-object v4

    iget v5, v15, Lek;->z:I

    iget v6, v15, Lek;->A:I

    iget-object v0, v15, Lek;->j:Lyj;

    .line 16
    invoke-virtual {v0}, Lyj;->u()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, Lek;->i:Ljava/lang/Class;

    iget-object v9, v15, Lek;->m:Lcom/bumptech/glide/f;

    iget-object v0, v15, Lek;->j:Lyj;

    .line 17
    invoke-virtual {v0}, Lyj;->h()Lvd;

    move-result-object v10

    iget-object v0, v15, Lek;->j:Lyj;

    .line 18
    invoke-virtual {v0}, Lyj;->y()Ljava/util/Map;

    move-result-object v11

    iget-object v0, v15, Lek;->j:Lyj;

    .line 19
    invoke-virtual {v0}, Lyj;->F()Z

    move-result v12

    iget-object v0, v15, Lek;->j:Lyj;

    .line 20
    invoke-virtual {v0}, Lyj;->C()Z

    move-result v0

    move-object/from16 v16, v13

    iget-object v13, v15, Lek;->j:Lyj;

    .line 21
    invoke-virtual {v13}, Lyj;->n()Lcom/bumptech/glide/load/i;

    move-result-object v17

    iget-object v13, v15, Lek;->j:Lyj;

    .line 22
    invoke-virtual {v13}, Lyj;->B()Z

    move-result v18

    iget-object v13, v15, Lek;->j:Lyj;

    .line 23
    invoke-virtual {v13}, Lyj;->A()Z

    move-result v19

    iget-object v13, v15, Lek;->j:Lyj;

    .line 24
    invoke-virtual {v13}, Lyj;->z()Z

    move-result v20

    iget-object v13, v15, Lek;->j:Lyj;

    .line 25
    invoke-virtual {v13}, Lyj;->m()Z

    move-result v22

    iget-object v13, v15, Lek;->q:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v24, v13

    move-object/from16 v23, v16

    move v13, v0

    move-object/from16 v25, v14

    move-object/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v22

    move-object/from16 v19, p0

    move-object/from16 v20, v24

    .line 26
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lwd;->b(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLdk;Ljava/util/concurrent/Executor;)Lwd$d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lek;->s:Lwd$d;

    .line 27
    iget-object v0, v1, Lek;->v:Lek$a;

    move-object/from16 v2, v23

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 28
    iput-object v0, v1, Lek;->s:Lwd$d;

    :cond_5
    if-eqz v21, :cond_6

    .line 29
    iget-wide v2, v1, Lek;->t:J

    invoke-static {v2, v3}, Ldl;->a(J)D

    .line 30
    :cond_6
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v25, v14

    move-object v1, v15

    :goto_2
    move-object/from16 v14, v25

    :goto_3
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lek;->v:Lek$a;

    sget-object v2, Lek$a;->g:Lek$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lek;->d()V

    .line 3
    iget-object v1, p0, Lek;->b:Lll;

    invoke-virtual {v1}, Lll;->c()V

    .line 4
    sget v1, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 5
    iput-wide v1, p0, Lek;->t:J

    .line 6
    iget-object v1, p0, Lek;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 7
    iget v1, p0, Lek;->k:I

    iget v2, p0, Lek;->l:I

    invoke-static {v1, v2}, Lhl;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Lek;->k:I

    iput v1, p0, Lek;->z:I

    .line 9
    iget v1, p0, Lek;->l:I

    iput v1, p0, Lek;->A:I

    .line 10
    :cond_0
    invoke-direct {p0}, Lek;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 11
    :goto_0
    new-instance v2, Lce;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lce;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lek;->m(Lce;I)V

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lek;->v:Lek$a;

    sget-object v2, Lek$a;->c:Lek$a;

    if-eq v1, v2, :cond_a

    .line 14
    sget-object v3, Lek$a;->e:Lek$a;

    if-ne v1, v3, :cond_3

    .line 15
    iget-object v1, p0, Lek;->r:Lhe;

    sget-object v2, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v1, v2}, Lek;->n(Lhe;Lcom/bumptech/glide/load/a;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_3
    sget-object v1, Lek$a;->d:Lek$a;

    iput-object v1, p0, Lek;->v:Lek$a;

    .line 18
    iget v3, p0, Lek;->k:I

    iget v4, p0, Lek;->l:I

    invoke-static {v3, v4}, Lhl;->i(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    iget v3, p0, Lek;->k:I

    iget v4, p0, Lek;->l:I

    invoke-virtual {p0, v3, v4}, Lek;->a(II)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, p0, Lek;->n:Lnk;

    invoke-interface {v3, p0}, Lnk;->h(Lmk;)V

    .line 21
    :goto_1
    iget-object v3, p0, Lek;->v:Lek$a;

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_8

    .line 22
    :cond_5
    iget-object v1, p0, Lek;->e:Lak;

    if-eqz v1, :cond_7

    invoke-interface {v1, p0}, Lak;->c(Lzj;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p0, Lek;->n:Lnk;

    invoke-direct {p0}, Lek;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lnk;->e(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_8
    sget-boolean v1, Lek;->D:Z

    if-eqz v1, :cond_9

    .line 25
    iget-wide v1, p0, Lek;->t:J

    invoke-static {v1, v2}, Ldl;->a(J)D

    .line 26
    :cond_9
    monitor-exit v0

    return-void

    .line 27
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lek;->d()V

    .line 3
    iget-object v1, p0, Lek;->b:Lll;

    invoke-virtual {v1}, Lll;->c()V

    .line 4
    iget-object v1, p0, Lek;->v:Lek$a;

    sget-object v2, Lek$a;->g:Lek$a;

    if-ne v1, v2, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lek;->d()V

    .line 7
    iget-object v1, p0, Lek;->b:Lll;

    invoke-virtual {v1}, Lll;->c()V

    .line 8
    iget-object v1, p0, Lek;->n:Lnk;

    invoke-interface {v1, p0}, Lnk;->a(Lmk;)V

    .line 9
    iget-object v1, p0, Lek;->s:Lwd$d;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lwd$d;->a()V

    .line 11
    iput-object v3, p0, Lek;->s:Lwd$d;

    .line 12
    :cond_1
    iget-object v1, p0, Lek;->r:Lhe;

    if-eqz v1, :cond_2

    .line 13
    iput-object v3, p0, Lek;->r:Lhe;

    move-object v3, v1

    .line 14
    :cond_2
    iget-object v1, p0, Lek;->e:Lak;

    if-eqz v1, :cond_4

    invoke-interface {v1, p0}, Lak;->f(Lzj;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lek;->n:Lnk;

    invoke-direct {p0}, Lek;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1, v4}, Lnk;->g(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_5
    iput-object v2, p0, Lek;->v:Lek$a;

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 18
    iget-object v0, p0, Lek;->u:Lwd;

    invoke-virtual {v0, v3}, Lwd;->h(Lhe;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lek;->b:Lll;

    invoke-virtual {v0}, Lll;->c()V

    .line 2
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Lzj;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lek;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v1, Lek;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v4, v1, Lek;->k:I

    .line 4
    iget v5, v1, Lek;->l:I

    .line 5
    iget-object v6, v1, Lek;->h:Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Lek;->i:Ljava/lang/Class;

    .line 7
    iget-object v8, v1, Lek;->j:Lyj;

    .line 8
    iget-object v9, v1, Lek;->m:Lcom/bumptech/glide/f;

    .line 9
    iget-object v10, v1, Lek;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 10
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast v0, Lek;

    .line 12
    iget-object v11, v0, Lek;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_1
    iget v2, v0, Lek;->k:I

    .line 14
    iget v12, v0, Lek;->l:I

    .line 15
    iget-object v13, v0, Lek;->h:Ljava/lang/Object;

    .line 16
    iget-object v14, v0, Lek;->i:Ljava/lang/Class;

    .line 17
    iget-object v15, v0, Lek;->j:Lyj;

    .line 18
    iget-object v3, v0, Lek;->m:Lcom/bumptech/glide/f;

    .line 19
    iget-object v0, v0, Lek;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    if-ne v4, v2, :cond_6

    if-ne v5, v12, :cond_6

    .line 21
    sget v2, Lhl;->c:I

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :cond_4
    instance-of v2, v6, Lxf;

    if-eqz v2, :cond_5

    .line 23
    check-cast v6, Lxf;

    invoke-interface {v6, v13}, Lxf;->a(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v8, v15}, Lyj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v9, v3, :cond_6

    if-ne v10, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3

    :catchall_0
    move-exception v0

    .line 27
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 28
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lek;->v:Lek$a;

    sget-object v2, Lek$a;->e:Lek$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lek;->v:Lek$a;

    sget-object v2, Lek$a;->c:Lek$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lek$a;->d:Lek$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l(Lce;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0}, Lek;->m(Lce;I)V

    return-void
.end method

.method public n(Lhe;Lcom/bumptech/glide/load/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek;->b:Lll;

    invoke-virtual {v0}, Lll;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-object v0, p0, Lek;->s:Lwd$d;

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lce;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lek;->i:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lce;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, v2}, Lek;->m(Lce;I)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Lhe;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    iget-object v4, p0, Lek;->i:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p0, Lek;->e:Lak;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Lak;->d(Lzj;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 10
    :try_start_2
    iput-object v0, p0, Lek;->r:Lhe;

    .line 11
    sget-object p2, Lek$a;->e:Lek$a;

    iput-object p2, p0, Lek;->v:Lek$a;

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p2, p0, Lek;->u:Lwd;

    invoke-virtual {p2, p1}, Lwd;->h(Lhe;)V

    return-void

    .line 14
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, v3, p2}, Lek;->o(Lhe;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_5
    :goto_2
    :try_start_4
    iput-object v0, p0, Lek;->r:Lhe;

    .line 17
    new-instance p2, Lce;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lek;->i:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lce;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p2, v2}, Lek;->m(Lce;I)V

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object p2, p0, Lek;->u:Lwd;

    invoke-virtual {p2, p1}, Lwd;->h(Lhe;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 23
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 24
    iget-object p2, p0, Lek;->u:Lwd;

    invoke-virtual {p2, v0}, Lwd;->h(Lhe;)V

    :cond_8
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lek;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lek;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
