.class public final Lti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvi<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lqe;

.field private final b:Lvi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lvi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi<",
            "Lji;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqe;Lvi;Lvi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Lvi<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lvi<",
            "Lji;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lti;->a:Lqe;

    .line 3
    iput-object p2, p0, Lti;->b:Lvi;

    .line 4
    iput-object p3, p0, Lti;->c:Lvi;

    return-void
.end method


# virtual methods
.method public a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lhe;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lti;->b:Lvi;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lti;->a:Lqe;

    invoke-static {v0, v1}, Lxg;->b(Landroid/graphics/Bitmap;Lqe;)Lxg;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lvi;->a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lji;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lti;->c:Lvi;

    invoke-interface {v0, p1, p2}, Lvi;->a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
