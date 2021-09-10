.class public abstract Lhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private d:Lzj;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    invoke-static {v0, v0}, Lhl;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput v0, p0, Lhk;->b:I

    .line 4
    iput v0, p0, Lhk;->c:I

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lmk;)V
    .locals 0

    return-void
.end method

.method public final c(Lzj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhk;->d:Lzj;

    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final f()Lzj;
    .locals 1

    .line 1
    iget-object v0, p0, Lhk;->d:Lzj;

    return-object v0
.end method

.method public final h(Lmk;)V
    .locals 2

    .line 1
    iget v0, p0, Lhk;->b:I

    iget v1, p0, Lhk;->c:I

    check-cast p1, Lek;

    invoke-virtual {p1, v0, v1}, Lek;->a(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
