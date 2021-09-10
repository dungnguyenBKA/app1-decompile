.class public Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Luo;
.implements Lrm;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/camerasideas/collagemaker/activity/adapter/l$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/BaseMvpActivity<",
        "Luo;",
        "Lqo;",
        ">;",
        "Luo;",
        "Lrm;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/camerasideas/collagemaker/activity/adapter/l$a;"
    }
.end annotation


# instance fields
.field private e:Landroid/net/Uri;

.field private f:Lcom/camerasideas/collagemaker/activity/adapter/l;

.field private g:Z

.field mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnChooseFolder:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnClear:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnNext:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnSelectedFolder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnSelectedHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGridView:Landroid/widget/GridView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMultipleView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvNext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTvSelectedCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvSelectedCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnClear:Landroidx/appcompat/widget/AppCompatImageView;

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->g:Z

    .line 4
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->w()V

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->v()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageSelectorActivity"

    return-object v0
.end method

.method public i(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->C(Ljava/util/List;)V

    return-void
.end method

.method public j(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x12

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_4

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 5
    invoke-virtual {v2, p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->r(I)V

    .line 7
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v2}, Lcm;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Lcm;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->h(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V

    .line 12
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "RecentPhotoFolder"

    const-string v2, "/Recent"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->C(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lqo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k()V

    :cond_4
    :goto_1
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnNext:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageGrid:onActivityResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    move-object v1, v0

    check-cast v1, Lqo;

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->e:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lqo;->o(Lcom/camerasideas/collagemaker/activity/BaseActivity;IILandroid/content/Intent;Landroid/net/Uri;Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->e:Landroid/net/Uri;

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "ImageSelector:KeyDown"

    .line 1
    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->f()V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mAppExitUtils:Lqq;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lqq;->a(Landroidx/appcompat/app/AppCompatActivity;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    const-string v0, "ImageSelectorActivity"

    const-string v1, "ImageSelector onBackPressed exit"

    .line 8
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->D(Z)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v1, Lqo;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v3

    invoke-virtual {v1, p0, p1, v3}, Lyn;->m(Landroid/app/Activity;Ljava/util/ArrayList;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1, v2}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->D(Z)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->s()V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lqo;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {p1, v1, v0, v2, v2}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    goto :goto_0

    .line 9
    :sswitch_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->a(I)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->s()V

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/l;->A(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnNext:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_0

    .line 15
    :sswitch_2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->p()V

    .line 16
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enabledShowSelectorAnimCircle"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-static {p0}, Lc2;->i(Landroid/content/Context;)I

    move-result p1

    .line 18
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowSelectorAnimCircleVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    invoke-virtual {p0, v2}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->z(Z)V

    goto :goto_0

    .line 20
    :sswitch_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mAppExitUtils:Lqq;

    invoke-virtual {p1, p0, v1}, Lqq;->c(Landroidx/appcompat/app/AppCompatActivity;Z)Z

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080096 -> :sswitch_3
        0x7f08009d -> :sswitch_2
        0x7f08009e -> :sswitch_1
        0x7f0800b2 -> :sswitch_0
        0x7f0800e1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSelectorActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSelectorActivity"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v2, "GlobalMode"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mMultipleView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 9
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedFolder:Landroid/widget/TextView;

    invoke-static {p0, v2}, Luq;->p(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 10
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    invoke-static {p0, v2}, Luq;->p(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvNext:Landroid/widget/TextView;

    if-nez v2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p0}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    const/16 v3, 0x12

    if-eqz v2, :cond_4

    const v5, 0x7f0e012e

    new-array v6, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->B(I)V

    .line 17
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    invoke-static {v2, p0}, Luq;->w(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 18
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mTvSelectedCount:Landroid/widget/TextView;

    invoke-static {p0, v2}, Luq;->p(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 19
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedHint:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    const v2, 0x7f0800e1

    .line 20
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/baseutils/widget/AnimCircleView;

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnClear:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnBack:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnNext:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    .line 27
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnChooseFolder:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_9
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v3

    const/high16 v5, 0x43160000    # 150.0f

    if-nez v3, :cond_a

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p0, v5}, Lc2;->b(Landroid/content/Context;F)I

    move-result v3

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 31
    new-instance v2, Lcom/camerasideas/collagemaker/activity/adapter/l;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v3}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->e()Lcn;

    move-result-object v3

    invoke-direct {v2, p0, v3, p0}, Lcom/camerasideas/collagemaker/activity/adapter/l;-><init>(Landroid/content/Context;Lcn;Lcom/camerasideas/collagemaker/activity/adapter/l$a;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    .line 32
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 33
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 34
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSelectedRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/adapter/m;

    invoke-direct {v3}, Lcom/camerasideas/collagemaker/activity/adapter/m;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 35
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, p0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->o(Lrm;)V

    .line 36
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {p0, v5}, Lc2;->b(Landroid/content/Context;F)I

    move-result v3

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->A(I)V

    .line 37
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 38
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->n(I)V

    .line 39
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->m(Z)V

    goto :goto_4

    .line 40
    :cond_c
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, v4}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->n(I)V

    .line 41
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, v4}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->m(Z)V

    .line 42
    :goto_4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v2, Lqo;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v2, p0, v3, p1}, Lqo;->r(Lcom/camerasideas/collagemaker/activity/BaseActivity;Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restorePaths="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v1, Lqo;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v2, v4, v0}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    if-nez p1, :cond_d

    .line 45
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 46
    sget-object p1, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v0, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    invoke-virtual {p1, p0, v0}, Linshot/collage/adconfig/l;->i(Landroid/app/Activity;Linshot/collage/adconfig/j;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "\u9009\u56fe\u9875\u5c55\u793a\u5168\u5c4f\u6210\u529f"

    .line 47
    invoke-static {p0, p1}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->g:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->w()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->x()V

    .line 4
    :cond_0
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    invoke-virtual {v0}, Linshot/collage/adconfig/l;->g()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->f(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->e:Landroid/net/Uri;

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryBaseGroupView;->k()V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5
    invoke-static {v0}, Lrq;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->C(Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/adapter/l;->z()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/adapter/l;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v1, Lqo;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    .line 12
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v1, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/l;->h(Linshot/collage/adconfig/j;)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "AppBaseBundle"

    const-string v1, "filePaths == null || filePaths.size() == 0"

    .line 4
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "KEY_FILE_PATHS"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->e:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v1, "IMAGE_PATH_FROM_CAMERA"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v0

    const-string v1, "GlobalMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onStart()V

    const-string v0, "PV"

    const-string v1, "SelectPage"

    .line 2
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected p()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lqo;

    invoke-direct {v0}, Lqo;-><init>()V

    return-object v0
.end method

.method protected q()I
    .locals 1

    const v0, 0x7f0b001f

    return v0
.end method

.method public s(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSelectedImage, position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSelectorActivity"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0, p1, p2}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->z(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lqo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->u()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0700db

    goto :goto_0

    :cond_0
    const p1, 0x7f0700da

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public u(Ljava/util/ArrayList;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p2, Lqo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, p1, v1, v2}, Lqo;->p(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;IZ)Z

    return-void
.end method

.method public v(Ljava/util/ArrayList;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lqo;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->f:Lcom/camerasideas/collagemaker/activity/adapter/l;

    invoke-virtual {v0, v1, p1, p2}, Lqo;->q(Lcom/camerasideas/collagemaker/activity/adapter/l;Ljava/util/List;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)Z

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-static {p0}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabledShowSelectorAnimCircle"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->z(Z)V

    :cond_0
    const-string v0, "/Google Photos"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lqo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->v()I

    move-result v0

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0, v2}, Lqo;->n(Lcom/camerasideas/collagemaker/activity/BaseActivity;IZ)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p1}, Lcm;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Recent"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f0e0107

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mBtnSelectedFolder:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mSignMoreLessView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Luq;->t(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public x(Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->D(Z)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lqo;

    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lyn;->l(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)Z

    return-void
.end method

.method public y(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartUpCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageSelectorActivity"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lqo;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->mGalleryView:Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/gallery/ui/GalleryMultiSelectGroupView;->v()I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "CameraUtils:takePhoto-Activity"

    .line 4
    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    :try_start_0
    invoke-static {}, Lrq;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0}, Lar;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_0
    const-string v1, ".jpg"

    .line 9
    invoke-static {p0, v1}, Lrq;->d(Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrq;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 13
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v2, "output"

    .line 14
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 17
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_2
    const-string v0, "CameraUtils"

    const-string v2, "take photo create file failed!"

    .line 18
    invoke-static {v0, v2, p1}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    move-object p1, v1

    .line 20
    :cond_3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;->e:Landroid/net/Uri;

    return-void
.end method

.method protected z(Z)V
    .locals 3

    const v0, 0x7f0800e1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/baseutils/widget/AnimCircleView;

    .line 2
    invoke-static {v0, p1}, Luq;->t(Landroid/view/View;Z)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity$a;

    invoke-direct {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity$a;-><init>(Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;Lcom/camerasideas/baseutils/widget/AnimCircleView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
