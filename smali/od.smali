.class Lod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrd;
.implements Luc$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrd;",
        "Luc$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lrd$a;

.field private e:I

.field private f:Lcom/bumptech/glide/load/g;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzf<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private h:I

.field private volatile i:Lzf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzf$a<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/util/List;Lsd;Lrd$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;",
            "Lsd<",
            "*>;",
            "Lrd$a;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lod;->e:I

    .line 9
    iput-object p1, p0, Lod;->b:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lod;->c:Lsd;

    .line 11
    iput-object p3, p0, Lod;->d:Lrd$a;

    return-void
.end method

.method constructor <init>(Lsd;Lrd$a;)V
    .locals 2
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
    invoke-virtual {p1}, Lsd;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lod;->e:I

    .line 4
    iput-object v0, p0, Lod;->b:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lod;->c:Lsd;

    .line 6
    iput-object p2, p0, Lod;->d:Lrd$a;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lod;->g:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    iget v3, p0, Lod;->h:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lod;->i:Lzf$a;

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 4
    iget v3, p0, Lod;->h:I

    iget-object v4, p0, Lod;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Lod;->g:Ljava/util/List;

    iget v4, p0, Lod;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lod;->h:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzf;

    .line 6
    iget-object v4, p0, Lod;->j:Ljava/io/File;

    iget-object v5, p0, Lod;->c:Lsd;

    .line 7
    invoke-virtual {v5}, Lsd;->s()I

    move-result v5

    iget-object v6, p0, Lod;->c:Lsd;

    invoke-virtual {v6}, Lsd;->f()I

    move-result v6

    iget-object v7, p0, Lod;->c:Lsd;

    invoke-virtual {v7}, Lsd;->k()Lcom/bumptech/glide/load/i;

    move-result-object v7

    .line 8
    invoke-interface {v3, v4, v5, v6, v7}, Lzf;->b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;

    move-result-object v3

    iput-object v3, p0, Lod;->i:Lzf$a;

    .line 9
    iget-object v3, p0, Lod;->i:Lzf$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lod;->c:Lsd;

    iget-object v4, p0, Lod;->i:Lzf$a;

    iget-object v4, v4, Lzf$a;->c:Luc;

    invoke-interface {v4}, Luc;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsd;->t(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v0, p0, Lod;->i:Lzf$a;

    iget-object v0, v0, Lzf$a;->c:Luc;

    iget-object v3, p0, Lod;->c:Lsd;

    invoke-virtual {v3}, Lsd;->l()Lcom/bumptech/glide/f;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Luc;->e(Lcom/bumptech/glide/f;Luc$a;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    return v0

    .line 11
    :cond_6
    :goto_4
    iget v0, p0, Lod;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lod;->e:I

    .line 12
    iget-object v2, p0, Lod;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    return v1

    .line 13
    :cond_7
    iget-object v0, p0, Lod;->b:Ljava/util/List;

    iget v2, p0, Lod;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/g;

    .line 14
    new-instance v2, Lpd;

    iget-object v3, p0, Lod;->c:Lsd;

    invoke-virtual {v3}, Lsd;->o()Lcom/bumptech/glide/load/g;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lpd;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    .line 15
    iget-object v3, p0, Lod;->c:Lsd;

    invoke-virtual {v3}, Lsd;->d()Laf;

    move-result-object v3

    invoke-interface {v3, v2}, Laf;->b(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lod;->j:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 16
    iput-object v0, p0, Lod;->f:Lcom/bumptech/glide/load/g;

    .line 17
    iget-object v0, p0, Lod;->c:Lsd;

    invoke-virtual {v0, v2}, Lsd;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lod;->g:Ljava/util/List;

    .line 18
    iput v1, p0, Lod;->h:I

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lod;->d:Lrd$a;

    iget-object v1, p0, Lod;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lod;->i:Lzf$a;

    iget-object v2, v2, Lzf$a;->c:Luc;

    sget-object v3, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lrd$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lod;->i:Lzf$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lzf$a;->c:Luc;

    invoke-interface {v0}, Luc;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lod;->d:Lrd$a;

    iget-object v1, p0, Lod;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lod;->i:Lzf$a;

    iget-object v3, v2, Lzf$a;->c:Luc;

    sget-object v4, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lod;->f:Lcom/bumptech/glide/load/g;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lrd$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method
