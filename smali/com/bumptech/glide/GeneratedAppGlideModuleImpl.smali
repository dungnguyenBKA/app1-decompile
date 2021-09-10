.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field private final a:Lcom/camerasideas/collagemaker/activity/CollageGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    new-instance p1, Lcom/camerasideas/collagemaker/activity/CollageGlideModule;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/activity/CollageGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/camerasideas/collagemaker/activity/CollageGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/a;

    invoke-direct {p1}, Lcom/bumptech/glide/integration/okhttp3/a;-><init>()V

    .line 2
    const-class p1, Lsf;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/c$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/g;->q(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/camerasideas/collagemaker/activity/CollageGlideModule;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class p1, Lcom/caverock/androidsvg/c;

    const-class p2, Landroid/graphics/drawable/PictureDrawable;

    new-instance v0, Lcr;

    invoke-direct {v0}, Lcr;-><init>()V

    .line 6
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lbr;

    invoke-direct {v0}, Lbr;-><init>()V

    .line 7
    invoke-virtual {p3, p2, p1, v0}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/camerasideas/collagemaker/activity/CollageGlideModule;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/camerasideas/collagemaker/activity/CollageGlideModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method e()Ljj$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    return-object v0
.end method
