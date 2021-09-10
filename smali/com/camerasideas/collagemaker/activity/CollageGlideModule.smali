.class public Lcom/camerasideas/collagemaker/activity/CollageGlideModule;
.super Loj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V
    .locals 1

    .line 1
    const-class p1, Lcom/caverock/androidsvg/c;

    const-class p2, Landroid/graphics/drawable/PictureDrawable;

    new-instance v0, Lcr;

    invoke-direct {v0}, Lcr;-><init>()V

    .line 2
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lbr;

    invoke-direct {v0}, Lbr;-><init>()V

    .line 3
    invoke-virtual {p3, p2, p1, v0}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
