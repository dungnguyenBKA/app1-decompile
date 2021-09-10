.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->n1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->n1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 10

    .line 1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->n1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p2}, Lcm;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_0
    invoke-static {v0, v1}, Lcm;->g(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 5
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v0, v2, :cond_2

    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v2, :cond_2

    iget-object v6, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v9, v1

    move v1, v0

    move v0, v9

    .line 10
    :goto_0
    new-instance v5, Lvl;

    invoke-direct {v5, v0, v1}, Lvl;-><init>(II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 12
    new-instance v5, Lvl;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0}, Lvl;-><init>(II)V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MaxTextureSize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v5, :cond_8

    .line 15
    invoke-virtual {v5}, Lvl;->c()I

    move-result v1

    invoke-virtual {v5}, Lvl;->a()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 16
    invoke-virtual {v5}, Lvl;->c()I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 17
    new-instance v1, Lvl;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v2

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v6}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Lvl;->b()F

    move-result v5

    div-float/2addr v6, v5

    float-to-int v5, v6

    invoke-direct {v1, v2, v5}, Lvl;-><init>(II)V

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {v5}, Lvl;->a()I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v2

    if-le v1, v2, :cond_4

    .line 19
    new-instance v1, Lvl;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Lvl;->b()F

    move-result v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v5}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I

    move-result v5

    invoke-direct {v1, v2, v5}, Lvl;-><init>(II)V

    :goto_3
    move-object v5, v1

    :cond_4
    const/16 v1, 0x400

    if-le v0, v1, :cond_5

    .line 20
    invoke-virtual {v5}, Lvl;->c()I

    move-result v1

    invoke-virtual {v5}, Lvl;->a()I

    move-result v2

    invoke-static {v0, v0, v1, v2}, Lcm;->b(IIII)I

    move-result v0

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v5}, Lvl;->c()I

    move-result v0

    invoke-virtual {v5}, Lvl;->a()I

    move-result v2

    invoke-static {v1, v1, v0, v2}, Lcm;->b(IIII)I

    move-result v0

    .line 22
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v1

    .line 23
    sget v2, Lc3;->g:I

    .line 24
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    :goto_4
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-virtual {v1, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->b(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->p1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 29
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/b;->V(Landroid/content/Context;)I

    move-result v2

    .line 30
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/app/b;->U(Landroid/content/Context;)I

    move-result v3

    .line 31
    invoke-virtual {v5}, Lvl;->c()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Lvl;->a()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    int-to-float v6, v2

    int-to-float v7, v3

    div-float v8, v6, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 32
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-float/2addr v6, v4

    float-to-int v2, v6

    .line 33
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 34
    :cond_6
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-float v7, v7, v4

    float-to-int v2, v7

    .line 35
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    :goto_5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 38
    invoke-static {v1}, Lcom/bumptech/glide/c;->r(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/w0;

    .line 39
    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->j0(Ljava/lang/String;)Lcom/bumptech/glide/h;

    .line 40
    check-cast v1, Lcom/camerasideas/collagemaker/activity/v0;

    .line 41
    invoke-virtual {v5}, Lvl;->c()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {v5}, Lvl;->a()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/camerasideas/collagemaker/activity/v0;->r0(II)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v1

    new-instance v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 42
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v4

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->c(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->c0(Lnk;)Lnk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    const-string v2, "error : "

    .line 43
    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImagePreviewFragment"

    invoke-static {v3, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    mul-int/lit8 v0, v0, 0x2

    .line 45
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 46
    invoke-static {v1}, Lcom/bumptech/glide/c;->r(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/w0;

    .line 47
    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/h;->j0(Ljava/lang/String;)Lcom/bumptech/glide/h;

    .line 48
    check-cast v1, Lcom/camerasideas/collagemaker/activity/v0;

    .line 49
    invoke-virtual {v5}, Lvl;->c()I

    move-result p2

    div-int/2addr p2, v0

    invoke-virtual {v5}, Lvl;->a()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/camerasideas/collagemaker/activity/v0;->r0(II)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p2

    new-instance v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 50
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v3

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->c(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/h;->c0(Lnk;)Lnk;

    .line 51
    :goto_6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->p1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 52
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f07006f

    invoke-virtual {v5}, Lvl;->c()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {v5}, Lvl;->a()I

    move-result v3

    div-int/2addr v3, v0

    invoke-static {p2, v1, v2, v3}, Lwq;->j(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;->a(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 4

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;->c:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0073

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroid/view/View;)V

    return-object p2
.end method
