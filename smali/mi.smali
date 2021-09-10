.class public Lmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m<",
        "Lji;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lhe;II)Lhe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lhe<",
            "Lji;",
            ">;II)",
            "Lhe<",
            "Lji;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lhe;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lji;

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->e()Lqe;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lji;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Lxg;

    invoke-direct {v3, v2, v1}, Lxg;-><init>(Landroid/graphics/Bitmap;Lqe;)V

    .line 5
    iget-object v1, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/m;->b(Landroid/content/Context;Lhe;II)Lhe;

    move-result-object p1

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {v3}, Lxg;->a()V

    .line 8
    :cond_0
    invoke-interface {p1}, Lhe;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    iget-object p3, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, p3, p1}, Lji;->g(Lcom/bumptech/glide/load/m;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lmi;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lmi;

    .line 3
    iget-object v0, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    iget-object p1, p1, Lmi;->b:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmi;->b:Lcom/bumptech/glide/load/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
