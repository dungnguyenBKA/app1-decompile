.class public Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$c;
.implements Lqm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/BaseMvpActivity<",
        "Ljava/lang/Object;",
        "Lmo;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$c;",
        "Lqm;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field private e:Landroid/net/Uri;

.field private f:Landroid/graphics/Rect;

.field mBannerAdContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBannerAdLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBgToolBarLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnChangeAlpha:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnMoveDown:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBtnMoveUp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImgAlignLineH:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImgAlignLineV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMaskView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMiddleLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSortItemLayout:Landroid/view/View;
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

.method private B()Z
    .locals 8

    .line 1
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    .line 2
    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    .line 4
    invoke-static {p0, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "DISCARD_DIALOG_FROM_FRAGMENT"

    const/4 v7, 0x1

    .line 6
    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/ConfirmDiscardFragment;

    const v4, 0x7f080133

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return v7
.end method

.method private E(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    const-class v3, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p0, v3}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v3

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveDown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveDown:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnMoveUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->E(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/camerasideas/collagemaker/activity/n;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/n;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mMaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/p;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/p;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageCutoutActivity"

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/o;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/o;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "ImageCutoutActivity"

    const-string v1, "onBackPressed"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    .line 5
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;->o()V

    return-void

    .line 6
    :cond_1
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageGuidFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->t0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)V

    return-void

    .line 8
    :cond_2
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    .line 10
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->B1()V

    return-void

    .line 11
    :cond_3
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;

    .line 13
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutBgFragment;->i2()V

    return-void

    .line 14
    :cond_4
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/utils/a;->a(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    const-class v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    invoke-static {p0, v0}, Landroidx/core/app/b;->K(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;

    .line 16
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutShapeFragment;->Q1()V

    return-void

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->B()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "sclick:button-click"

    .line 1
    invoke-static {v0}, Ljm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->g(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->q()V

    .line 5
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->E(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 6
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->C()V

    goto :goto_0

    .line 7
    :sswitch_1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->f(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->p()V

    .line 9
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->m()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->E(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 10
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->C()V

    goto :goto_0

    :sswitch_2
    const-string p1, "ImageCutoutActivity"

    const-string v0, "\u70b9\u51fbCutout Sticker\u7f16\u8f91\u9875 Cancel\u6309\u94ae"

    .line 11
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->B()Z

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800a3 -> :sswitch_2
        0x7f0800af -> :sswitch_1
        0x7f0800b0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCutoutActivity"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AD_enableLimitBannerHeight"

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v2}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    invoke-static {p0}, Luq;->d(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    :cond_1
    const-class v5, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageCutoutFragment;

    const/4 v6, 0x0

    const v7, 0x7f080084

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->o0(Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView$c;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0, p0}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->g0(Lqm;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePaths, savedInstanceState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/a;->c(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreFilePaths:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string p1, "from savedInstanceState get file paths failed"

    .line 14
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_KEY_LIST_PATHS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 16
    :cond_3
    invoke-static {p0}, Lc2;->h(Landroid/content/Context;)I

    move-result v0

    .line 17
    invoke-static {p0}, Lc2;->g(Landroid/content/Context;)I

    move-result v1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[displayWidth, displayHeight]=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UIUtils"

    invoke-static {v6, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v7, v2

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-lt v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_5

    add-int/lit8 v7, v1, 0x0

    goto :goto_1

    :cond_5
    move v0, v3

    .line 22
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[aspectWidth, aspectHeight]=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0603ae

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 26
    invoke-static {p0}, Luq;->d(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 27
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f06027f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f06024f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    const-string v3, "displaySize-[width, height]=["

    .line 29
    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {v3, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBtnChangeAlpha:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 34
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->m()V

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->e:Landroid/net/Uri;

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/w;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/w;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    if-eqz p1, :cond_7

    .line 38
    invoke-virtual {p1, v10}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->q0(Z)V

    :cond_7
    const-string p1, "PV"

    const-string v0, "EditPage"

    .line 39
    invoke-static {p0, p1, v0}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "TesterLog-Image Edit"

    const-string v0, "\u53d1\u751f\u5f02\u5e38, \u8fd4\u56de\u9009\u56fe\u9875"

    .line 40
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseActivity;->mAppExitUtils:Lqq;

    invoke-virtual {p1, p0, v10}, Lqq;->a(Landroidx/appcompat/app/AppCompatActivity;Z)Z

    const p1, 0x7f0e00c3

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0, v0}, Lc2;->b(Landroid/content/Context;F)I

    .line 43
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onDestroy()V

    return-void
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    instance-of p1, p1, Lcom/camerasideas/collagemaker/message/b;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast p1, Lmo;

    invoke-virtual {p1, p0}, Lmo;->n(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onPause()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    invoke-virtual {v0}, Linshot/collage/adconfig/f;->k()V

    .line 3
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    invoke-virtual {v0}, Linshot/collage/adconfig/l;->g()V

    .line 4
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->j(Linshot/collage/adconfig/i;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->e:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0, v0}, Lrq;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lbm;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lmo;

    invoke-virtual {v0, p0}, Lmo;->n(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    return-void

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mBannerAdLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/f;->l(Landroid/view/ViewGroup;)V

    .line 8
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v1, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/l;->h(Linshot/collage/adconfig/j;)V

    .line 9
    sget-object v1, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/l;->h(Linshot/collage/adconfig/j;)V

    .line 10
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->l(Linshot/collage/adconfig/i;)V

    :cond_2
    return-void
.end method

.method protected p()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lmo;

    invoke-direct {v0}, Lmo;-><init>()V

    return-object v0
.end method

.method protected q()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

.method public s(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 4
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->r(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->E(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    return-void
.end method

.method public t(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Luq;->t(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->C()V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mMaskView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mProgressView:Landroid/view/View;

    invoke-static {v0}, Luq;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic w(Lud0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->t0(Landroid/net/Uri;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->m0(I)Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lud0;->c(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lud0;->a()V

    return-void
.end method

.method public x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->y0(I)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mCutoutView:Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/photoproc/editorview/CutoutEditorView;->x0(I)V

    .line 7
    new-instance v0, Lcom/camerasideas/collagemaker/activity/s;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/s;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    .line 8
    new-instance v1, Lve0;

    invoke-direct {v1, v0}, Lve0;-><init>(Lvd0;)V

    .line 9
    invoke-static {}, Lnf0;->b()Lxd0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v0

    .line 10
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/activity/q;->a:Lcom/camerasideas/collagemaker/activity/q;

    new-instance v2, Lcom/camerasideas/collagemaker/activity/v;

    invoke-direct {v2, p0}, Lcom/camerasideas/collagemaker/activity/v;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    new-instance v3, Lcom/camerasideas/collagemaker/activity/r;

    invoke-direct {v3, p0}, Lcom/camerasideas/collagemaker/activity/r;-><init>(Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;)V

    .line 11
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    return-void
.end method

.method public y(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Luq;->s(Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mImgAlignLineH:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1, v1}, Luq;->s(Landroid/view/View;I)V

    return-void
.end method

.method public z(Landroid/view/View;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->k()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/i;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->C()V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;->mSortItemLayout:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Luq;->t(Landroid/view/View;Z)V

    return-void
.end method
