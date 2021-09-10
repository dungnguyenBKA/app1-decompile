.class public Lcom/camerasideas/collagemaker/activity/ImageCropActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;
.implements Lcom/camerasideas/collagemaker/activity/adapter/p$b;
.implements Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;,
        Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/adapter/p;

.field private c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private d:Ljava/lang/String;

.field private e:F

.field f:Landroid/net/Uri;

.field g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Landroid/graphics/Matrix;

.field private k:F

.field private l:Z

.field private m:Ltq;

.field mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressViewLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->i:Z

    .line 4
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->n:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;

    return-void
.end method

.method private o(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->C(FFZ)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    cmpl-float p1, p2, v0

    :cond_0
    return-void
.end method

.method private p(I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->l:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->m:Ltq;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ltq;

    invoke-direct {v1}, Ltq;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->m:Ltq;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->m:Ltq;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->g:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Ltq;->b(Landroid/content/Context;IILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    invoke-static {p0, p1, p1, v1}, Lwq;->r(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v2, "ImageCropActivity"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFilterWithOriginal::min length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", width * height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CROP_MATRIX"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    array-length v3, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 9
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->j:Landroid/graphics/Matrix;

    .line 10
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->j:Landroid/graphics/Matrix;

    invoke-static {v1, v2, p1, p1}, Lwq;->f(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private t()V
    .locals 1

    const-string v0, "ImageEdit:Crop:cancel"

    .line 1
    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public e(FF)V
    .locals 1

    const v0, 0x7f0e0051

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->b:Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/adapter/p;->D(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    const/4 p1, -0x1

    if-nez p2, :cond_0

    if-ne p3, p1, :cond_0

    .line 2
    const-class p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 4
    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsm;->x1(Landroidx/fragment/app/g;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment;->B1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/CustomRatioFragment$b;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    if-nez p3, :cond_1

    .line 7
    invoke-static {p0}, Landroidx/core/app/b;->V(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0}, Landroidx/core/app/b;->U(Landroid/content/Context;)I

    move-result p2

    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->c(Landroid/content/Context;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p0}, Lyl;->a(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 8
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->e:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    goto :goto_0

    :cond_2
    if-ne p2, p1, :cond_3

    if-ne p3, p1, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1, p1}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    goto :goto_0

    :cond_3
    int-to-float p1, p2

    int-to-float p2, p3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    :goto_0
    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageCropActivity"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "sclick:button-click"

    .line 1
    invoke-static {v0}, Ljm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080094

    const-string v1, "TesterLog-Crop"

    if-eq p1, v0, :cond_2

    const v0, 0x7f080099

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->t()V

    const-string p1, "\u70b9\u51fb\u53d6\u6d88Crop\u6309\u94ae"

    .line 4
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E()Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->j:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->u(Landroid/graphics/Matrix;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    .line 11
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "CROP_FILTER"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    const-string v2, "CROP_RATIO_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p1, "\u70b9\u51fb\u5e94\u7528Crop\u6309\u94ae"

    .line 16
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b004a

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    sget p1, Lbutterknife/ButterKnife;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->L(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "CROP_ENCRYPTED"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->l:Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v3, "CROP_RATIO"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->k:F

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->k:F

    const-string v3, "CROP_ORIGINAL_RATIO"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->e:F

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ORG_FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->g:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "CROP_RATIO_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    :try_start_0
    const-string v1, "photoeditor.cutout.backgrounderaser"

    .line 15
    invoke-virtual {p0, v1, p1, v0}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    invoke-static {p1}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    .line 18
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 20
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/adapter/k;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {p0, v3}, Lc2;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/camerasideas/collagemaker/activity/adapter/k;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 21
    new-instance p1, Lcom/camerasideas/collagemaker/activity/adapter/p;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/p;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->b:Lcom/camerasideas/collagemaker/activity/adapter/p;

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mRatioRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 23
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->b:Lcom/camerasideas/collagemaker/activity/adapter/p;

    invoke-virtual {p1, p0}, Lcom/camerasideas/collagemaker/activity/adapter/p;->C(Lcom/camerasideas/collagemaker/activity/adapter/p$b;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate, mImgPath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageCropActivity"

    invoke-static {v0, p1}, Lem;->n(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->i:Z

    .line 26
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/l;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/l;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "PV"

    const-string v0, "Crop"

    .line 30
    invoke-static {p0, p1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->i:Z

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    .line 9
    :cond_1
    invoke-static {v1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 13
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onDestroy()V

    return-void

    .line 14
    :cond_3
    throw v1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public q()V
    .locals 1

    const v0, 0x7f0e00cf

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->t()V

    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v1, "ImageCropActivity"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mCropView:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->P()V

    const-string v0, "Crop: load bitmap success"

    .line 4
    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->d:Ljava/lang/String;

    const v1, 0x7f0e014e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->o(FF)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->mProgressViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v0, "Crop: load bitmap failed"

    .line 10
    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e00cf

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->t()V

    :cond_2
    :goto_1
    return-void
.end method

.method public s()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->i:Z

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    invoke-static {p0}, Lc2;->h(Landroid/content/Context;)I

    move-result v0

    .line 6
    invoke-static {p0}, Lc2;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "ImageCropActivity"

    const-string v3, "ImageCropActivity::initOriginal::entry"

    .line 8
    invoke-static {v2, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    const/4 v6, 0x1

    if-gtz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->p(I)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 10
    iput-object v7, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 11
    div-int/lit8 v0, v0, 0x2

    :cond_4
    if-eqz v4, :cond_5

    if-lt v5, v1, :cond_1

    :cond_5
    move v3, v4

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageCropActivity::initOriginal::end:isOOM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isBitmapValid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v6, v3

    :goto_1
    if-eqz v6, :cond_7

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->n:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/k;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/k;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 15
    :cond_7
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->i:Z

    if-nez v0, :cond_8

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/i;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/i;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;)V

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;->n:Lcom/camerasideas/collagemaker/activity/ImageCropActivity$b;

    .line 17
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/ImageCropActivity$a;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCropActivity;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_2
    return-void
.end method
