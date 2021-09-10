.class public abstract Lok;
.super Lfk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lok$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lfk<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lok$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfk;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lok;->b:Landroid/view/View;

    .line 4
    new-instance v0, Lok$a;

    invoke-direct {v0, p1}, Lok$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lok;->c:Lok$a;

    return-void
.end method


# virtual methods
.method public a(Lmk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lok;->c:Lok$a;

    invoke-virtual {v0, p1}, Lok$a;->h(Lmk;)V

    return-void
.end method

.method public c(Lzj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->b:Landroid/view/View;

    const v1, 0x7f080140

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public f()Lzj;
    .locals 2

    .line 1
    iget-object v0, p0, Lok;->b:Landroid/view/View;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lzj;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lzj;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lok;->c:Lok$a;

    invoke-virtual {p1}, Lok$a;->b()V

    return-void
.end method

.method public h(Lmk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lok;->c:Lok$a;

    invoke-virtual {v0, p1}, Lok$a;->c(Lmk;)V

    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lok;->b:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Target for: "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lok;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
