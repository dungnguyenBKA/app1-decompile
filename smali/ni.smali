.class Lni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lni$a;,
        Lni$c;,
        Lni$b;
    }
.end annotation


# instance fields
.field private final a:Lmc;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lni$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/bumptech/glide/i;

.field private final e:Lqe;

.field private f:Z

.field private g:Z

.field private h:Lcom/bumptech/glide/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lni$a;

.field private j:Z

.field private k:Lni$a;

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lni$a;

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lmc;IILcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lmc;",
            "II",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lqe;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->p(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->p(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/bumptech/glide/i;->j()Lcom/bumptech/glide/h;

    move-result-object p1

    sget-object v2, Lvd;->b:Lvd;

    .line 5
    new-instance v3, Lck;

    invoke-direct {v3}, Lck;-><init>()V

    invoke-virtual {v3, v2}, Lyj;->f(Lvd;)Lyj;

    move-result-object v2

    check-cast v2, Lck;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lyj;->X(Z)Lyj;

    move-result-object v2

    check-cast v2, Lck;

    .line 7
    invoke-virtual {v2, v3}, Lyj;->S(Z)Lyj;

    move-result-object v2

    check-cast v2, Lck;

    .line 8
    invoke-virtual {v2, p3, p4}, Lyj;->M(II)Lyj;

    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lni;->c:Ljava/util/List;

    .line 12
    iput-object v1, p0, Lni;->d:Lcom/bumptech/glide/i;

    .line 13
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lni$c;

    invoke-direct {v1, p0}, Lni$c;-><init>(Lni;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    iput-object v0, p0, Lni;->e:Lqe;

    .line 15
    iput-object p3, p0, Lni;->b:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lni;->h:Lcom/bumptech/glide/h;

    .line 17
    iput-object p2, p0, Lni;->a:Lmc;

    .line 18
    invoke-virtual {p0, p5, p6}, Lni;->l(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lni;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lni;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lni;->n:Lni$a;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lni;->n:Lni$a;

    .line 4
    invoke-virtual {p0, v1}, Lni;->k(Lni$a;)V

    return-void

    .line 5
    :cond_1
    iput-boolean v0, p0, Lni;->g:Z

    .line 6
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->d()I

    move-result v0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 8
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->b()V

    .line 9
    new-instance v0, Lni$a;

    iget-object v3, p0, Lni;->b:Landroid/os/Handler;

    iget-object v4, p0, Lni;->a:Lmc;

    invoke-interface {v4}, Lmc;->f()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lni$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lni;->k:Lni$a;

    .line 10
    iget-object v0, p0, Lni;->h:Lcom/bumptech/glide/h;

    .line 11
    new-instance v1, Lxk;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lxk;-><init>(Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lck;

    invoke-direct {v2}, Lck;-><init>()V

    invoke-virtual {v2, v1}, Lyj;->R(Lcom/bumptech/glide/load/g;)Lyj;

    move-result-object v1

    check-cast v1, Lck;

    .line 13
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lni;->a:Lmc;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->i0(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lni;->k:Lni$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->c0(Lnk;)Lnk;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lni;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lni;->e:Lqe;

    invoke-interface {v2, v0}, Lqe;->d(Landroid/graphics/Bitmap;)V

    .line 4
    iput-object v1, p0, Lni;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lni;->f:Z

    .line 6
    iget-object v0, p0, Lni;->i:Lni$a;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lni;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/i;->m(Lnk;)V

    .line 8
    iput-object v1, p0, Lni;->i:Lni$a;

    .line 9
    :cond_1
    iget-object v0, p0, Lni;->k:Lni$a;

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lni;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/i;->m(Lnk;)V

    .line 11
    iput-object v1, p0, Lni;->k:Lni$a;

    .line 12
    :cond_2
    iget-object v0, p0, Lni;->n:Lni$a;

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, p0, Lni;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/i;->m(Lnk;)V

    .line 14
    iput-object v1, p0, Lni;->n:Lni$a;

    .line 15
    :cond_3
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->clear()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lni;->j:Z

    return-void
.end method

.method b()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->i:Lni$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lni$a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lni;->l:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->i:Lni$a;

    if-eqz v0, :cond_0

    iget v0, v0, Lni$a;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->c()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget v0, p0, Lni;->q:I

    return v0
.end method

.method h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lni;->a:Lmc;

    invoke-interface {v0}, Lmc;->g()I

    move-result v0

    iget v1, p0, Lni;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method i()I
    .locals 1

    .line 1
    iget v0, p0, Lni;->p:I

    return v0
.end method

.method k(Lni$a;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lni;->g:Z

    .line 2
    iget-boolean v0, p0, Lni;->j:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lni;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lni;->f:Z

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lni;->n:Lni$a;

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lni$a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lni;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lni;->e:Lqe;

    invoke-interface {v2, v0}, Lqe;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lni;->l:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Lni;->i:Lni$a;

    .line 11
    iput-object p1, p0, Lni;->i:Lni$a;

    .line 12
    iget-object p1, p0, Lni;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lni$b;

    .line 14
    invoke-interface {v2}, Lni$b;->a()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Lni;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-direct {p0}, Lni;->j()V

    return-void
.end method

.method l(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lni;->m:Lcom/bumptech/glide/load/m;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lni;->l:Landroid/graphics/Bitmap;

    .line 5
    iget-object v0, p0, Lni;->h:Lcom/bumptech/glide/h;

    new-instance v1, Lck;

    invoke-direct {v1}, Lck;-><init>()V

    invoke-virtual {v1, p1}, Lyj;->T(Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object p1

    iput-object p1, p0, Lni;->h:Lcom/bumptech/glide/h;

    .line 6
    invoke-static {p2}, Lhl;->d(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lni;->o:I

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lni;->p:I

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lni;->q:I

    return-void
.end method

.method m(Lni$b;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lni;->j:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 5
    iget-boolean p1, p0, Lni;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lni;->f:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lni;->j:Z

    .line 8
    invoke-direct {p0}, Lni;->j()V

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method n(Lni$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lni;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lni;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lni;->f:Z

    :cond_0
    return-void
.end method
