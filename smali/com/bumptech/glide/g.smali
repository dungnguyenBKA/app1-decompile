.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g$b;,
        Lcom/bumptech/glide/g$a;,
        Lcom/bumptech/glide/g$e;,
        Lcom/bumptech/glide/g$d;,
        Lcom/bumptech/glide/g$c;
    }
.end annotation


# instance fields
.field private final a:Lbg;

.field private final b:Lsj;

.field private final c:Lwj;

.field private final d:Lxj;

.field private final e:Lwc;

.field private final f:Lwi;

.field private final g:Ltj;

.field private final h:Lvj;

.field private final i:Luj;

.field private final j:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lvj;

    invoke-direct {v0}, Lvj;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lvj;

    .line 3
    new-instance v0, Luj;

    invoke-direct {v0}, Luj;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Luj;

    .line 4
    invoke-static {}, Lil;->b()Lk2;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Lk2;

    .line 5
    new-instance v1, Lbg;

    invoke-direct {v1, v0}, Lbg;-><init>(Lk2;)V

    iput-object v1, p0, Lcom/bumptech/glide/g;->a:Lbg;

    .line 6
    new-instance v0, Lsj;

    invoke-direct {v0}, Lsj;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->b:Lsj;

    .line 7
    new-instance v0, Lwj;

    invoke-direct {v0}, Lwj;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->c:Lwj;

    .line 8
    new-instance v1, Lxj;

    invoke-direct {v1}, Lxj;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/g;->d:Lxj;

    .line 9
    new-instance v1, Lwc;

    invoke-direct {v1}, Lwc;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/g;->e:Lwc;

    .line 10
    new-instance v1, Lwi;

    invoke-direct {v1}, Lwi;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/g;->f:Lwi;

    .line 11
    new-instance v1, Ltj;

    invoke-direct {v1}, Ltj;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/g;->g:Ltj;

    const-string v1, "Gif"

    const-string v2, "Bitmap"

    const-string v3, "BitmapDrawable"

    .line 12
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const-string v3, "legacy_prepend_all"

    .line 16
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "legacy_append"

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, v2}, Lwj;->e(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/d<",
            "TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lsj;

    invoke-virtual {v0, p1, p2}, Lsj;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    return-object p0
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/l<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lxj;

    invoke-virtual {v0, p1, p2}, Lxj;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)V

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lwj;

    const-string v1, "legacy_append"

    invoke-virtual {v0, v1, p3, p1, p2}, Lwj;->a(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;
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
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lbg;

    invoke-virtual {v0, p1, p2, p3}, Lbg;->a(Ljava/lang/Class;Ljava/lang/Class;Lag;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/bumptech/glide/load/k<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lwj;

    invoke-virtual {v0, p1, p4, p2, p3}, Lwj;->a(Ljava/lang/String;Lcom/bumptech/glide/load/k;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Ltj;

    invoke-virtual {v0}, Ltj;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/bumptech/glide/g$b;

    invoke-direct {v0}, Lcom/bumptech/glide/g$b;-><init>()V

    throw v0
.end method

.method public g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lfe;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lfe<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/g;->i:Luj;

    .line 2
    invoke-virtual {v1, v8, v9, v10}, Luj;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lfe;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/bumptech/glide/g;->i:Luj;

    invoke-virtual {v2, v1}, Luj;->b(Lfe;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    return-object v11

    :cond_0
    if-nez v1, :cond_4

    .line 4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/g;->c:Lwj;

    .line 6
    invoke-virtual {v1, v8, v9}, Lwj;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/Class;

    .line 8
    iget-object v1, v0, Lcom/bumptech/glide/g;->f:Lwi;

    .line 9
    invoke-virtual {v1, v14, v10}, Lwi;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    .line 11
    iget-object v1, v0, Lcom/bumptech/glide/g;->c:Lwj;

    .line 12
    invoke-virtual {v1, v8, v14}, Lwj;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 13
    iget-object v1, v0, Lcom/bumptech/glide/g;->f:Lwi;

    .line 14
    invoke-virtual {v1, v14, v4}, Lwi;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvi;

    move-result-object v6

    .line 15
    new-instance v7, Lud;

    iget-object v3, v0, Lcom/bumptech/glide/g;->j:Lk2;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move-object v3, v14

    move-object v11, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lud;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lvi;Lk2;)V

    .line 16
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 18
    :cond_3
    new-instance v7, Lfe;

    iget-object v6, v0, Lcom/bumptech/glide/g;->j:Lk2;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lfe;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lk2;)V

    .line 19
    :goto_1
    iget-object v2, v0, Lcom/bumptech/glide/g;->i:Luj;

    invoke-virtual {v2, v8, v9, v10, v1}, Luj;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lfe;)V

    :cond_4
    return-object v1
.end method

.method public h(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lzf<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lbg;

    invoke-virtual {v0, p1}, Lbg;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lvj;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lvj;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/g;->a:Lbg;

    invoke-virtual {v1, p1}, Lbg;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 6
    iget-object v3, p0, Lcom/bumptech/glide/g;->c:Lwj;

    .line 7
    invoke-virtual {v3, v2, p2}, Lwj;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 9
    iget-object v4, p0, Lcom/bumptech/glide/g;->f:Lwi;

    .line 10
    invoke-virtual {v4, v3, p3}, Lwi;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/g;->h:Lvj;

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 15
    invoke-virtual {v1, p1, p2, p3, v2}, Lvj;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public j(Lhe;)Lcom/bumptech/glide/load/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lhe<",
            "TX;>;)",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lxj;

    invoke-interface {p1}, Lhe;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxj;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/bumptech/glide/g$d;

    invoke-interface {p1}, Lhe;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public k(Ljava/lang/Object;)Lvc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lvc<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lwc;

    invoke-virtual {v0, p1}, Lwc;->a(Ljava/lang/Object;)Lvc;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lsj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsj;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/bumptech/glide/g$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public m(Lhe;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lxj;

    invoke-interface {p1}, Lhe;->d()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxj;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Ltj;

    invoke-virtual {v0, p1}, Ltj;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public o(Lvc$a;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc$a<",
            "*>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lwc;

    invoke-virtual {v0, p1}, Lwc;->b(Lvc$a;)V

    return-object p0
.end method

.method public p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lvi<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lwi;

    invoke-virtual {v0, p1, p2, p3}, Lwi;->c(Ljava/lang/Class;Ljava/lang/Class;Lvi;)V

    return-object p0
.end method

.method public q(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;
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
            "+TModel;+TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lbg;

    invoke-virtual {v0, p1, p2, p3}, Lbg;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)V

    return-object p0
.end method
