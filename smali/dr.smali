.class public Ldr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbk<",
        "Landroid/graphics/drawable/PictureDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lce;Ljava/lang/Object;Lnk;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lce;",
            "Ljava/lang/Object;",
            "Lnk<",
            "Landroid/graphics/drawable/PictureDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    check-cast p3, Lkk;

    invoke-virtual {p3}, Lok;->i()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return p2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Lnk;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    .line 2
    check-cast p3, Lkk;

    invoke-virtual {p3}, Lok;->i()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    return p1
.end method
