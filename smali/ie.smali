.class Lie;
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
.field private final b:Lrd$a;

.field private final c:Lsd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd<",
            "*>;"
        }
    .end annotation
.end field

.field private d:I

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

.field private k:Lje;


# direct methods
.method constructor <init>(Lsd;Lrd$a;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lie;->e:I

    .line 3
    iput-object p1, p0, Lie;->c:Lsd;

    .line 4
    iput-object p2, p0, Lie;->b:Lrd$a;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lie;->c:Lsd;

    invoke-virtual {v0}, Lsd;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lie;->c:Lsd;

    invoke-virtual {v1}, Lsd;->m()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lie;->c:Lsd;

    invoke-virtual {v1}, Lsd;->q()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find any load path from "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lie;->c:Lsd;

    .line 7
    invoke-virtual {v2}, Lsd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lie;->c:Lsd;

    .line 8
    invoke-virtual {v2}, Lsd;->q()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v3, p0, Lie;->g:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 10
    iget v4, p0, Lie;->h:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lie;->i:Lzf$a;

    const/4 v0, 0x0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 12
    iget v1, p0, Lie;->h:I

    iget-object v2, p0, Lie;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 13
    iget-object v1, p0, Lie;->g:Ljava/util/List;

    iget v2, p0, Lie;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lie;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzf;

    .line 14
    iget-object v2, p0, Lie;->j:Ljava/io/File;

    iget-object v3, p0, Lie;->c:Lsd;

    .line 15
    invoke-virtual {v3}, Lsd;->s()I

    move-result v3

    iget-object v4, p0, Lie;->c:Lsd;

    invoke-virtual {v4}, Lsd;->f()I

    move-result v4

    iget-object v5, p0, Lie;->c:Lsd;

    invoke-virtual {v5}, Lsd;->k()Lcom/bumptech/glide/load/i;

    move-result-object v5

    .line 16
    invoke-interface {v1, v2, v3, v4, v5}, Lzf;->b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;

    move-result-object v1

    iput-object v1, p0, Lie;->i:Lzf$a;

    .line 17
    iget-object v1, p0, Lie;->i:Lzf$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lie;->c:Lsd;

    iget-object v2, p0, Lie;->i:Lzf$a;

    iget-object v2, v2, Lzf$a;->c:Luc;

    invoke-interface {v2}, Luc;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsd;->t(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    iget-object v0, p0, Lie;->i:Lzf$a;

    iget-object v0, v0, Lzf$a;->c:Luc;

    iget-object v1, p0, Lie;->c:Lsd;

    invoke-virtual {v1}, Lsd;->l()Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Luc;->e(Lcom/bumptech/glide/f;Luc$a;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    return v0

    .line 19
    :cond_8
    :goto_4
    iget v3, p0, Lie;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lie;->e:I

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_a

    .line 21
    iget v3, p0, Lie;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lie;->d:I

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_9

    return v2

    .line 23
    :cond_9
    iput v2, p0, Lie;->e:I

    .line 24
    :cond_a
    iget v3, p0, Lie;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/g;

    .line 25
    iget v4, p0, Lie;->e:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 26
    iget-object v4, p0, Lie;->c:Lsd;

    invoke-virtual {v4, v11}, Lsd;->r(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    move-result-object v10

    .line 27
    new-instance v13, Lje;

    iget-object v4, p0, Lie;->c:Lsd;

    .line 28
    invoke-virtual {v4}, Lsd;->b()Loe;

    move-result-object v5

    iget-object v4, p0, Lie;->c:Lsd;

    .line 29
    invoke-virtual {v4}, Lsd;->o()Lcom/bumptech/glide/load/g;

    move-result-object v7

    iget-object v4, p0, Lie;->c:Lsd;

    .line 30
    invoke-virtual {v4}, Lsd;->s()I

    move-result v8

    iget-object v4, p0, Lie;->c:Lsd;

    .line 31
    invoke-virtual {v4}, Lsd;->f()I

    move-result v9

    iget-object v4, p0, Lie;->c:Lsd;

    .line 32
    invoke-virtual {v4}, Lsd;->k()Lcom/bumptech/glide/load/i;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lje;-><init>(Loe;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    iput-object v13, p0, Lie;->k:Lje;

    .line 33
    iget-object v4, p0, Lie;->c:Lsd;

    invoke-virtual {v4}, Lsd;->d()Laf;

    move-result-object v4

    iget-object v5, p0, Lie;->k:Lje;

    invoke-interface {v4, v5}, Laf;->b(Lcom/bumptech/glide/load/g;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lie;->j:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 34
    iput-object v3, p0, Lie;->f:Lcom/bumptech/glide/load/g;

    .line 35
    iget-object v3, p0, Lie;->c:Lsd;

    invoke-virtual {v3, v4}, Lsd;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lie;->g:Ljava/util/List;

    .line 36
    iput v2, p0, Lie;->h:I

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lie;->b:Lrd$a;

    iget-object v1, p0, Lie;->k:Lje;

    iget-object v2, p0, Lie;->i:Lzf$a;

    iget-object v2, v2, Lzf$a;->c:Luc;

    sget-object v3, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lrd$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Luc;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lie;->i:Lzf$a;

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
    iget-object v0, p0, Lie;->b:Lrd$a;

    iget-object v1, p0, Lie;->f:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lie;->i:Lzf$a;

    iget-object v3, v2, Lzf$a;->c:Luc;

    sget-object v4, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    iget-object v5, p0, Lie;->k:Lje;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lrd$a;->d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Luc;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method
