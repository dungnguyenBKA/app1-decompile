.class public Lcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvi<",
        "Lcom/caverock/androidsvg/c;",
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
.method public a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "Lcom/caverock/androidsvg/c;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "Landroid/graphics/drawable/PictureDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lhe;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/c;

    .line 2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/c;->i()Landroid/graphics/Picture;

    move-result-object p1

    .line 3
    new-instance p2, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    .line 4
    new-instance p1, Lrg;

    invoke-direct {p1, p2}, Lrg;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
