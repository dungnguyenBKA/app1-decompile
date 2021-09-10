.class public final Lcom/bumptech/glide/load/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/g;


# instance fields
.field private final b:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Lcom/bumptech/glide/load/h<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzk;

    invoke-direct {v0}, Lzk;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v1}, Le0;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v1, v0}, Le0;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/h;

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v2, v0}, Le0;->l(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2, p1}, Lcom/bumptech/glide/load/h;->e(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    .line 2
    invoke-virtual {v0, p1}, Le0;->e(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/h;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public d(Lcom/bumptech/glide/load/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    iget-object p1, p1, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v0, p1}, Le0;->i(Le0;)V

    return-void
.end method

.method public e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v0, p1, p2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/load/i;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    iget-object p1, p1, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v0, p1}, Le0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v0}, Le0;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Options{values="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->b:Lx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
