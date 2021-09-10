.class public Lli;
.super Lai;
.source "SourceFile"

# interfaces
.implements Lde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai<",
        "Lji;",
        ">;",
        "Lde;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lji;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lai;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lai;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lji;

    invoke-virtual {v0}, Lji;->stop()V

    .line 2
    iget-object v0, p0, Lai;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lji;

    invoke-virtual {v0}, Lji;->f()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lai;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lji;

    invoke-virtual {v0}, Lji;->e()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lji;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lji;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lai;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lji;

    invoke-virtual {v0}, Lji;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
