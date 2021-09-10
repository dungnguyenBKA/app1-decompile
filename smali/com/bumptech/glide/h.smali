.class public Lcom/bumptech/glide/h;
.super Lyj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lyj<",
        "Lcom/bumptech/glide/h<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Lcom/bumptech/glide/h<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field private final B:Landroid/content/Context;

.field private final C:Lcom/bumptech/glide/i;

.field private final D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final E:Lcom/bumptech/glide/e;

.field private F:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/Object;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbk<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lck;

    invoke-direct {v0}, Lck;-><init>()V

    sget-object v1, Lvd;->c:Lvd;

    .line 2
    invoke-virtual {v0, v1}, Lyj;->f(Lvd;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    sget-object v1, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/f;

    .line 3
    invoke-virtual {v0, v1}, Lyj;->O(Lcom/bumptech/glide/f;)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lyj;->S(Z)Lyj;

    move-result-object v0

    check-cast v0, Lck;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/i;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lyj;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/h;->I:Z

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/h;->C:Lcom/bumptech/glide/i;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/h;->D:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/bumptech/glide/h;->B:Landroid/content/Context;

    .line 6
    iget-object p4, p2, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    invoke-virtual {p4}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/e;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/bumptech/glide/e;->e(Ljava/lang/Class;)Lcom/bumptech/glide/j;

    move-result-object p3

    .line 7
    iput-object p3, p0, Lcom/bumptech/glide/h;->F:Lcom/bumptech/glide/j;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/h;->E:Lcom/bumptech/glide/e;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/i;->n()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbk;

    .line 11
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/h;->Y(Lbk;)Lcom/bumptech/glide/h;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/bumptech/glide/i;->o()Lck;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    return-void
.end method

.method private a0(Ljava/lang/Object;Lnk;Lbk;Lak;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;IILyj;Ljava/util/concurrent/Executor;)Lzj;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnk<",
            "TTranscodeType;>;",
            "Lbk<",
            "TTranscodeType;>;",
            "Lak;",
            "Lcom/bumptech/glide/j<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Lyj<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lzj;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/h;->k0(Ljava/lang/Object;Lnk;Lbk;Lyj;Lak;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lzj;

    move-result-object v0

    return-object v0
.end method

.method private d0(Lnk;Lbk;Lyj;Ljava/util/concurrent/Executor;)Lnk;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lnk<",
            "TTranscodeType;>;>(TY;",
            "Lbk<",
            "TTranscodeType;>;",
            "Lyj<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    const-string v13, "Argument must not be null"

    .line 1
    invoke-static {p1, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, v11, Lcom/bumptech/glide/h;->J:Z

    if-eqz v0, :cond_3

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, v11, Lcom/bumptech/glide/h;->F:Lcom/bumptech/glide/j;

    .line 4
    invoke-virtual/range {p3 .. p3}, Lyj;->t()Lcom/bumptech/glide/f;

    move-result-object v6

    .line 5
    invoke-virtual/range {p3 .. p3}, Lyj;->q()I

    move-result v7

    .line 6
    invoke-virtual/range {p3 .. p3}, Lyj;->p()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 7
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/h;->a0(Ljava/lang/Object;Lnk;Lbk;Lak;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;IILyj;Ljava/util/concurrent/Executor;)Lzj;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Lnk;->f()Lzj;

    move-result-object v1

    .line 9
    move-object v2, v0

    check-cast v2, Lek;

    invoke-virtual {v2, v1}, Lek;->h(Lzj;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual/range {p3 .. p3}, Lyj;->B()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lzj;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 11
    invoke-static {v1, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {v1}, Lzj;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-interface {v1}, Lzj;->c()V

    :cond_1
    return-object v12

    .line 14
    :cond_2
    iget-object v1, v11, Lcom/bumptech/glide/h;->C:Lcom/bumptech/glide/i;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/i;->m(Lnk;)V

    .line 15
    invoke-interface {p1, v0}, Lnk;->c(Lzj;)V

    .line 16
    iget-object v1, v11, Lcom/bumptech/glide/h;->C:Lcom/bumptech/glide/i;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/i;->q(Lnk;Lzj;)V

    return-object v12

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k0(Ljava/lang/Object;Lnk;Lbk;Lyj;Lak;Lcom/bumptech/glide/j;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lzj;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnk<",
            "TTranscodeType;>;",
            "Lbk<",
            "TTranscodeType;>;",
            "Lyj<",
            "*>;",
            "Lak;",
            "Lcom/bumptech/glide/j<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lzj;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/h;->B:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/h;->E:Lcom/bumptech/glide/e;

    iget-object v4, v0, Lcom/bumptech/glide/h;->G:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/h;->D:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/h;->H:Ljava/util/List;

    .line 2
    invoke-virtual {v2}, Lcom/bumptech/glide/e;->f()Lwd;

    move-result-object v14

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/j;->b()Ltk;

    move-result-object v15

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    .line 4
    invoke-static/range {v1 .. v16}, Lek;->k(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lyj;IILcom/bumptech/glide/f;Lnk;Lbk;Ljava/util/List;Lak;Lwd;Ltk;Ljava/util/concurrent/Executor;)Lek;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public Y(Lbk;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/h;->H:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->H:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public Z(Lyj;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyj<",
            "*>;)",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lyj;->a(Lyj;)Lyj;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    return-object p1
.end method

.method public bridge synthetic a(Lyj;)Lyj;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object p1

    return-object p1
.end method

.method public b0()Lcom/bumptech/glide/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lyj;->d()Lyj;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    .line 2
    iget-object v1, v0, Lcom/bumptech/glide/h;->F:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->F:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public c0(Lnk;)Lnk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lnk<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcl;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v1, p0, v0}, Lcom/bumptech/glide/h;->d0(Lnk;Lbk;Lyj;Ljava/util/concurrent/Executor;)Lnk;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b0()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lyj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b0()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public e0(Landroid/widget/ImageView;)Lok;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lok<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lhl;->a()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lyj;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lyj;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/bumptech/glide/h$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0}, Lyj;->J()Lyj;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0}, Lyj;->K()Lyj;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0}, Lyj;->J()Lyj;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0}, Lyj;->I()Lyj;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/h;->E:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/h;->D:Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lok;

    move-result-object p1

    const/4 v1, 0x0

    .line 13
    invoke-static {}, Lcl;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/h;->d0(Lnk;Lbk;Lyj;Ljava/util/concurrent/Executor;)Lnk;

    check-cast p1, Lok;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f0(Lbk;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbk<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/h;->H:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->Y(Lbk;)Lcom/bumptech/glide/h;

    move-result-object p1

    return-object p1
.end method

.method public g0(Landroid/net/Uri;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/h;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/h;->J:Z

    return-object p0
.end method

.method public h0(Ljava/lang/Integer;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/h;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/h;->J:Z

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/h;->B:Landroid/content/Context;

    invoke-static {p1}, Luk;->c(Landroid/content/Context;)Lcom/bumptech/glide/load/g;

    move-result-object p1

    .line 4
    new-instance v0, Lck;

    invoke-direct {v0}, Lck;-><init>()V

    invoke-virtual {v0, p1}, Lyj;->R(Lcom/bumptech/glide/load/g;)Lyj;

    move-result-object p1

    check-cast p1, Lck;

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->Z(Lyj;)Lcom/bumptech/glide/h;

    move-result-object p1

    return-object p1
.end method

.method public i0(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/h;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/h;->J:Z

    return-object p0
.end method

.method public j0(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/h;->G:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/h;->J:Z

    return-object p0
.end method

.method public l0(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/h;->F:Lcom/bumptech/glide/j;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/bumptech/glide/h;->I:Z

    return-object p0
.end method
