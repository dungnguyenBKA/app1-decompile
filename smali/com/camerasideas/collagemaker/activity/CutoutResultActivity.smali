.class public Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseResultActivity;
.source "SourceFile"

# interfaces
.implements Lto;
.implements Ldm$d;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/camerasideas/collagemaker/activity/adapter/n;

.field private j:Z

.field mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImagePreview:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImagePreviewLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageThumbnail:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPreViewProgressbar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPreviewLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSaveCompleteTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSaveHintLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSaveProgressBar:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSaveText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->g:Z

    .line 3
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->h:Z

    return-void
.end method

.method static synthetic t(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->j:Z

    return p0
.end method

.method private u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->s(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/w0;

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/w0;->u(Ljava/lang/String;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/v0;->p0()Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    new-instance v1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;-><init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/v0;->q0(Lbk;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->g:Z

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageResultActivity"

    return-object v0
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lpo;

    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, p3}, Lpo;->n(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->c0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;->o1()Z

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080096

    const-string v1, "TesterLog-Result Page"

    if-eq p1, v0, :cond_9

    const v0, 0x7f0800aa

    if-eq p1, v0, :cond_8

    const v0, 0x7f08022b

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "\u70b9\u51fb\u9884\u89c8\u6309\u94ae"

    .line 2
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Click_Result"

    const-string v0, "Preview"

    .line 3
    invoke-static {p0, p1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->j:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {v2}, Lbm;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string p1, "checkImagePaths size:"

    .line 12
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PathUtils"

    invoke-static {v2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0e00cf

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    const p1, 0x7f08022a

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, -0x1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    :goto_1
    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 19
    :cond_5
    :try_start_0
    const-class p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 20
    invoke-static {p0, p1}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    new-instance p1, Lzl;

    invoke-direct {p1}, Lzl;-><init>()V

    const-string v4, "Key.Preview.Max.Width"

    .line 22
    invoke-virtual {p1, v4, v3}, Lzl;->c(Ljava/lang/String;I)Lzl;

    const-string v3, "Key.Preview.Max.Height"

    .line 23
    invoke-virtual {p1, v3, v2}, Lzl;->c(Ljava/lang/String;I)Lzl;

    const-string v2, "isPng"

    .line 24
    invoke-virtual {p1, v2, v0}, Lzl;->b(Ljava/lang/String;Z)Lzl;

    const-string v0, "Key.Image.Preview.Path"

    .line 25
    invoke-virtual {p1, v0, v1}, Lzl;->d(Ljava/lang/String;Ljava/util/ArrayList;)Lzl;

    .line 26
    invoke-virtual {p1}, Lzl;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 27
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object v0

    const v1, 0x7f080134

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/m;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->e(Ljava/lang/String;)Landroidx/fragment/app/m;

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/m;->g()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    const-string p1, "\u70b9\u51fbHome\u6309\u94ae"

    .line 35
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->return2MainActivity()V

    goto :goto_3

    :cond_9
    const-string p1, "\u70b9\u51fb\u8fd4\u56de\u6309\u94ae"

    .line 37
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "mSavedImagePath"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/adapter/n;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/adapter/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->i:Lcom/camerasideas/collagemaker/activity/adapter/n;

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ldm;->d(Landroidx/recyclerview/widget/RecyclerView;)Ldm;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldm;->e(Ldm$d;)Ldm;

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->i:Lcom/camerasideas/collagemaker/activity/adapter/n;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/r;

    invoke-direct {v2}, Lcom/camerasideas/collagemaker/activity/adapter/r;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveText:Landroid/widget/TextView;

    invoke-static {v0, p0}, Luq;->w(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveProgressBar:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->h(Z)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveCompleteTV:Landroid/widget/TextView;

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreviewLayout:Landroid/widget/LinearLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveHintLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->i:Lcom/camerasideas/collagemaker/activity/adapter/n;

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/adapter/n;->z(Z)V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/camerasideas/collagemaker/message/c;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/message/c;->d()Z

    move-result p1

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const-string v2, ""

    .line 3
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    const-string v2, "TesterLog-Save"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/16 v5, 0x105

    const/4 v6, 0x0

    if-eq v0, v5, :cond_2

    const/16 v5, 0x100

    if-eq v0, v5, :cond_1

    const/16 v5, 0x101

    if-eq v0, v5, :cond_0

    const-string v5, "\u4fdd\u5b58\u56fe\u7247\u5f39\u51faReportErr\u5bf9\u8bdd\u6846\uff0c\u9519\u8bef\u63d0\u793a\uff1a\u4fdd\u5b58\u56fe\u7247\u5931\u8d25\uff01"

    .line 4
    invoke-static {v2, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e0126

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v6}, Landroidx/core/app/b;->H0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;)V

    goto :goto_0

    :cond_0
    const-string v5, "\u4fdd\u5b58\u56fe\u7247\u5f39\u51faReportErr\u5bf9\u8bdd\u6846\uff0c\u9519\u8bef\u63d0\u793a\uff1a\u4fdd\u5b58\u56fe\u7247SD\u5361\u6ca1\u6709\u5145\u5206\u7a7a\u95f4"

    .line 6
    invoke-static {v2, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e012c

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/app/b;->G0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v5, "\u4fdd\u5b58\u56fe\u7247\u5f39\u51faReportErr\u5bf9\u8bdd\u6846\uff0c\u9519\u8bef\u63d0\u793a\uff1a\u4fdd\u5b58\u56fe\u7247SD\u5361\u6ca1\u6709\u6302\u8f7d"

    .line 8
    invoke-static {v2, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e012b

    .line 9
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/core/app/b;->G0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v5, "\u4fdd\u5b58\u56fe\u7247\u5f39\u51faReportErr\u5bf9\u8bdd\u6846\uff0c\u9519\u8bef\u63d0\u793a\uff1a\u4fdd\u5b58\u56fe\u7247\u53d1\u751fOOM"

    .line 10
    invoke-static {v2, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e00cd

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v6}, Landroidx/core/app/b;->H0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 12
    :cond_3
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->j:Z

    .line 13
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/appdata/f;->m(Landroid/content/Context;I)V

    .line 14
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->h:Z

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lpo;

    invoke-virtual {v0, v4, p0}, Lpo;->q(ZLandroid/app/Activity;)Z

    .line 16
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->h:Z

    .line 17
    :cond_4
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->u()V

    .line 19
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreviewLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveHintLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 21
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mSaveProgressBar:Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i()V

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->i:Lcom/camerasideas/collagemaker/activity/adapter/n;

    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/adapter/n;->z(Z)V

    .line 23
    invoke-static {p0, v1}, Lcm;->r(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u56fe\u7247\u4fdd\u5b58\u6210\u529f"

    .line 24
    invoke-static {v2, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_1
    const-string v2, "SaveSuccess"

    if-eqz v0, :cond_5

    const-string v0, "Yes"

    .line 25
    invoke-static {p0, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v0, "No"

    .line 26
    invoke-static {p0, v2, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_8

    const-string v0, ".png"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_8

    .line 28
    :cond_6
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PngSaveCount"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_7

    const v1, 0x7f0e0128

    .line 29
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lmr;->d(Ljava/lang/CharSequence;)V

    :cond_7
    add-int/2addr p1, v3

    .line 31
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    :cond_8
    iput-boolean v3, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->g:Z

    .line 33
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v4}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->d(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->h:Z

    .line 3
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->b(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->g:Z

    if-eqz p1, :cond_0

    const-string v0, "mSavedImagePath"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mBtnHome:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->u()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->h:Z

    const-string v1, "KEY_HAS_POPUP_RATE"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->g:Z

    const-string v1, "KEY_ENABLED_SHOW_BTN_HOME"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->f:Ljava/lang/String;

    const-string v1, "mSavedImagePath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onStart()V

    const-string v0, "PV"

    const-string v1, "ResultPage"

    .line 2
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected q()I
    .locals 1

    const v0, 0x7f0b001e

    return v0
.end method
